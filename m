Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC541A5B8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786861834; cv=none; b=RjmMVH2pKG95go4iowcvpesS15VxlWO+BuIIby9q9w3w05IKEJ26PugFGdwmCMkEsXXT168Ot/9WL/ysqBoVBgSFtVzOyWt3j8D1T35ZzEmaQp2o2Qd62JSXSJdnhBTb6POwDHOBJP5hu1ACkMwEBwWlKBwpCWEdSq0DC7bKFWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786861834; c=relaxed/simple;
	bh=4DzaGAox1K3yD1VQFAVusvztjePk0b70wqXBcv34190=;
	h=To:Subject:From:Message-Id:Date; b=Fl8cam4F/tgs4PRLrBULBRj76kW2Up2n933LOfMC6Um74nLYKb+s4p3iNVqtpwllkmgtRIE+ARwW6NlZ2LY5hJOrTBYfw9WECPwcOV722TTx2QKFkoImCzWGSzXDq4bKP/OL9IRu64bciKsDh5a0K8AH+CpCf6X8fLKkICaeyVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glawEhrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glawEhrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6B4C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786861833;
	bh=4DzaGAox1K3yD1VQFAVusvztjePk0b70wqXBcv34190=;
	h=To:Subject:From:Date:From;
	b=glawEhrGKp/YnE0H4LLNhCpOocnRax6PCt04HGpGaMR+YnqTKR647Q5bbDavS/AQu
	 8vCmwubhjmnTmMoMwA9LizMS3hmYbqQ3jeM38Q7+/B1a8/hLRJNLCqMiLUchd7J05M
	 CTwbHq0kf73zQBohSeYOoLwj/bE+9yAiiKtnL0QYbgOENXs0PY7Xo6pRQMC0hyNTKC
	 PmpiQhp3jo7XlWG78xVNyTLhLhsHOuL3hULxHX6uCoK8+c3OmFSOD9pS3Hz3pI8qDL
	 +5zEkNV2RIN8BYRHQcwijx+5EYUmTjti8xdpF2u631yumxCSX4ggfSenNXf7G+liyy
	 8sWR7bCluLkTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D67C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686183368.32462.3154197422832209860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2605554e5ebfd5a6c2c2862fd951f12acae7853953df81a53564392500b088b1
Date: Sun, 16 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786861833
