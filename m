Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4668517A313
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744732195; cv=none; b=n7AbboBqmX46c2ApN28ioNYvv/hO15v2YvPmv59gXxQkKeLWA1ramN9Q6IQNsMF4h1/mUDqu+MDFMAbHlugMXXJEomYaCpI6FSIfYEj2pkNTMpKzrjGQfTYtysDiL0qt3Yyb7AyNQCS3yzF6YbO1m6rImH1Q8LoWp10HWGKiOn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744732195; c=relaxed/simple;
	bh=LHdlTHhJ24zxacFaJkvt6QFUDIVbBkXPzANfuG8EYTk=;
	h=To:Subject:From:Message-Id:Date; b=IEFqEDcnE/1q3ws5lubApT7v76a1sTl8ffTQMV44UVrVYfuvX8s6phIFyXWZYCArnb4qsQg/mlpRNF0MbkCg9bhlzD5NRti7ubXovsKL+91adMkqGJmvE9rUWo8Kc6Mq7ANWgwI5WIAj1XJ8Jocpc0BiZA6VjG8UDlvYoDH4sKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeADaqfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeADaqfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4CBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744732193;
	bh=LHdlTHhJ24zxacFaJkvt6QFUDIVbBkXPzANfuG8EYTk=;
	h=To:Subject:From:Date:From;
	b=UeADaqfrHg+RyVHpt/igPpsvVcAjwdIVMinYYO6Y8N/KLgiZs4IwPlP+hFea8BLuL
	 QYegs3486vy4m139WzAaLn0eOYtw8CDdFYeNiYF9Z5tAjQbipWk6iACXBbp8ltvgg6
	 T6n2UUj+RmunZ3VRuPUxONUDRK1e8cnqSKDTbxARKuz6trsskBqi2ByPw9n/yIa5Sr
	 MTcAwl+qXW8SyA+8U6VYCKlRb+lkOVGewY2OAmZ31o7RKX9Z8sy+NpHlodPVaMr7FI
	 kgsc4ps45yyiXh/9Zc53yiPjEb+nDx3pOvieHf+QxP/jIDG48IhLyM8CmSdnUzbdsm
	 933IAYUpva5QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B8BC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473219360.2428.6166070248140103898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54456e49fb840252782fc48f401827601b613ca7959d22aa117860592f4b69f
Date: Tue, 15 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744732193
