Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A22029C328
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760132394; cv=none; b=UeMuF936FDKiR2pUGyfR9sB7YNWAY1S2XDUXsbBmntptgNnC6O/aoettS8ISdg8LWSmESEDf/rzAS76uAiEUzyR4C7HOFg1+uY+wNpBI5sG0qKTfljVo5kpAt2yLbcNyu6871OjXd+uOaF66Fiv7opZeMcXmlD81qiQfyLk7JTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760132394; c=relaxed/simple;
	bh=833LqLhfry3ST6g5A1QQRtpExBVrMg+ToEo1KAnPaYY=;
	h=To:Subject:From:Message-Id:Date; b=UbG0MsOoHG9QteCCqrflTsSK+Sj8vuXBMTJn+zJF9J0g9HgTqzsIIXUZ7+qFpxMp0hsUeB+SXP2FF0s602gMR278bGV/ycTZ6t6b2Ke/Uf1m5X2YWAtUrA8JJnBSYAm4xdBSLMAys/06VOR0MdbwofuTGUcQVvq08D/2+RuNyaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwN4wGwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwN4wGwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F353C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760132393;
	bh=833LqLhfry3ST6g5A1QQRtpExBVrMg+ToEo1KAnPaYY=;
	h=To:Subject:From:Date:From;
	b=BwN4wGwvSfEr9SRc1WxBrGbt+ubnNXKbgECaqrZHzjvoM3c/K52+g4QJllrg8pp0L
	 ZBZ5cPSvAGp+Yet7d7DsiBv+ABx7qbEAk2UL/7P2wuMbkagKbGtksKjAypTVaNakGU
	 f4+UoBT/RZUuNbxd5pOu7kLXctcoF7ZrKIdqu2IGqo0m0NHVfThg74cRqNfgPnfKDy
	 YnxfGpjzvS0dYaGkEXuQW6soT+WTSIwbkEQ4k1xT5HLHWunG13WPmIioBKgEO7oe29
	 EOrTdLh3d+7hJwGVgK08uhR9UkUQ/dG/cnAs4uVScgnHsB8ylpQbNjhmH4IdpgJMT4
	 urF7dmpz/70Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA08CCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013239358.8790.3588495942209740769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2171d92f3631080fa2fae58afd3b166882ce9a35e333d1bb7c01bf713d3566
Date: Fri, 10 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760132393
