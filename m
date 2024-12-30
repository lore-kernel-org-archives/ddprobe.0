Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348971A00D1
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735549554; cv=none; b=jB+CMD6+LnzN7scZNrsxVCgivGC7y34adq/eikgyqsFTSQL7TlmNZNvzfHzmOZp86A+ZRyEHPwUgx2m+L9s8WCsAYjnj0Ib1HxfqKc57d8PGdYvmJA7HnIHHy0oovVLIdAiTKEK1RfFGb19M76nPh1SCi2JpoSIGEWr2caAnkSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735549554; c=relaxed/simple;
	bh=pNgU+iD9UeIlLofWfFvWlCzdpi1q1kUOA96bU1mvy6Q=;
	h=To:Subject:From:Message-Id:Date; b=sW4E+OWlONWT1q1Pd/mKGFFUt9oyaqSsKxR9bQZ116JU6z/1Ok3qxh0FRKI3zUg4Qn6JhskUxhKNdhznqb8/Jrv34dKlE5LauWgLePkmyFSg/gdTgI45wL7LOhH/Cuu2CfoXbuh9GkUXa5iL9nn8xJ7tK+mvmgAZpCTgbGE5h5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcfZS32M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcfZS32M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAECCC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735549553;
	bh=pNgU+iD9UeIlLofWfFvWlCzdpi1q1kUOA96bU1mvy6Q=;
	h=To:Subject:From:Date:From;
	b=NcfZS32MjvZdzwT7BYienrgJ81L4WPIrDn6oQeD/ywRdGbXwoalpq/ZfX+VpBmeqz
	 750dHh/HrejeS/C9LCZ0/9iTQLRAZ5YWv7r1ywERZ0l8s6huNw9wwugKs+yaAe/jzy
	 VK+7jcUklthH1Rhtd0Jep64tfAg3s7sG9S/PSruF4wbdnFPT/cKI6nf7vSykfpHBjB
	 DwMIizHMe0txWr5NrlkgzAzjoZxhpC2LkhK2GYqeQqdYPYIO9b7OErhkKHQpK+fdo4
	 vx5KaQjOsGklwymiMqkCRYZGgDp8MIJCrOs8UZMecg3lUhtDFcG7q4ccDo7TzJ5tI3
	 dVjWDGG7evi/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41C6E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173554955360.17249.6888322630421630905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47474785ed9f70301085f1f63a0a0624d542308ab6887ce7c32131a4e7b0dc1a
Date: Mon, 30 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735549553
