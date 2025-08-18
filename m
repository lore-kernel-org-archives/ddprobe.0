Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318C22F1FE2
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755505195; cv=none; b=qf9OlHudNEPGB0DV0tmeMii/D8ry8IdwvnFE1eOpEK1EjehJY5matnmblLC2llozfXZzcGkNJFYBVWavXnxSmQ+CJqHGmKXq6Hf/y1g4w5uASM8n22P9+53PycbvxMNYRk5A7STAXFCzJmPmOLYahg1keLgS2q6nmpkTeFa1r3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755505195; c=relaxed/simple;
	bh=3oENWfN5I6sMl672zFDJjnTfoA0OMLVpchm8cb3uLjY=;
	h=To:Subject:From:Message-Id:Date; b=SLXGA3ZOMMoLLAZD3WFQKLuqn7omaKq9/i0qLBiigsBqKOdfCn3jLFHkd5FHla7rYzfcoe9wFo8wKPfrFwjAkwlO413Cs5FIYlOogZm8vIIkUYg6m6PwSpEVt0w78EKibtTCBEM/UqS9bFcL9s9nXIo4A3f/HXjXGkhlpi9vHEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjAH2R/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjAH2R/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4D4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755505193;
	bh=3oENWfN5I6sMl672zFDJjnTfoA0OMLVpchm8cb3uLjY=;
	h=To:Subject:From:Date:From;
	b=AjAH2R/Yac9vIMi2Zp49yY4dlkt+WfZyT8VqCVyMgh1Adu2cqyy/bFNdaPt+fIr8u
	 HqItcEIzSR1BPAjwaRPi9BxpIjJefHpDb/reXAsoGJd/xPz2jWiIAlmtqWl46ObWsC
	 cRZWLIAOrE1aNdSnySZgc6HxrzaLSUKPNPoW8PfqBgp8SmLG5PyLC6vePOkn4g0CMb
	 Mog2lOwRZEPDtJg3tlam3/DprmghWQdhsp6Seb0RWEgjk/KKXp0+l+tQRSUMY8JB3Q
	 /CPqJv1WjfucLyPyhYvEZDL7jseNBKzuqdfnhLh64WIAAmKNMW2B4Kxcd/X6mv/HoF
	 KjAmM3lbxZ8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CDCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550519358.3040.14365553682522584536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0020b7f88d457418287ff02fdf21885b1d1746a1da1e1135d13fd60f211cee89
Date: Mon, 18 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755505193
