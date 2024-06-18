Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60ED718E1D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718690363; cv=none; b=OdaoJyepnwocQkk/ZqeyusyF1dFFv5YbU2dcsSCSSBLRlvsj4YkBg7OEldplNPWEtzFldSUkt51wHUGL1YDCxPBRSPTkkEEl7UyRrtrL8v9P6syQC/Uzc3LaJBoYHHmigoC9Rn0VEXeAfdiiJHCNqwrpb+DfYcUe2uiA2urucjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718690363; c=relaxed/simple;
	bh=eEPmzifDECKOrAo2Kq2ZMy8D7Asrj7jO3OgYVBKkOXE=;
	h=To:Subject:From:Message-Id:Date; b=H+Rn1r2I0MrVYDUwqGAjulRayJK9fLbNedgx9oQu9iQb79Dw19jYlkqUHLTSnMxJ5JdYg+4W/O7YC7VbDU/KIE1zcIb/ZpML+5KbWbaOacJ2fedYP5sHyQWjKc+b8XB9Rhipd2QDk+wBF+ZNHEBwJf2/URzJ0fU9pI37i3KJ1tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQnDWJsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQnDWJsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA27CC4AF1C
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718690362;
	bh=eEPmzifDECKOrAo2Kq2ZMy8D7Asrj7jO3OgYVBKkOXE=;
	h=To:Subject:From:Date:From;
	b=iQnDWJsq3xZajUa+nrWohlDOVKSHlP1bJgyeHBU8y3wMz0AbdKvNvlU4YR0UOEGvV
	 FO0e0uR/epytEo37lmvbqE8/JczGwJf0Edgcf6uXuYciqx1i8sBjn+kWdyjyOGHNqp
	 mq5WPG8nonGrK9LGbk+yG0y24hMYCKJ67M7iHqDG3e8akL9Pkoc6Z5kmJGp1hsT8CV
	 YJYnhkwltyibYLdW/LjpmWq936SrB2zWPYAb1QX8M5GrSNSTw0bBNuzZqgIseKPkTE
	 bw0HKt8J82OYcXwesXmR1wcvJqz9TUQDCtrRIGiQ3lt4ugx7HCCplH0qrK0m3qyoKe
	 7ngwSBLqcYH1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2668C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869036278.14002.15473729737848908859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536e2261e85449121f358424a9fafc7dfae27f77435027322435aa60420ceb63
Date: Tue, 18 Jun 2024 05:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718690362
