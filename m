Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3984C29B0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737633354; cv=none; b=o2R4MaDGZgjtcJ3SiA8bYxGy5j1I5HUoD0EWhbwcRgYtJ89L64+497zUjbjGbjXNMe4fPvuvJU3Ivp9TklwjoP6kg0je1VRoCQO3iHrOf1H9r159e1YcopQObS0zL50yJNs3vDhhBjVQDfiQMjcc8LcZwow5qdB1jmhpPKGj66I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737633354; c=relaxed/simple;
	bh=rwX9Sj8vwRk7qDrZhUn8vnBjsDNxhpfvYJlwHH5fCP0=;
	h=To:Subject:From:Message-Id:Date; b=sqXC2dueoOMYiHTeXHTI2z0Pn47B/rIU7KYrL97OWsrwb9SDdbZMp7YQD04z7/UZ6dNH9JstIAPrtTml6QwigYd5kvnKnAzVjBFCRz0o4Zn+FJ1W5qNn5nvETjLUDNg/E+L5/Dm3nB7oKFVQT0Xb8dyJZada55Q54cRrDffPZus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ioci+wiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ioci+wiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9B8C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737633353;
	bh=rwX9Sj8vwRk7qDrZhUn8vnBjsDNxhpfvYJlwHH5fCP0=;
	h=To:Subject:From:Date:From;
	b=Ioci+wiDpVZRXRn2q72/1TrYeVC51wryQaYRjdMPbU2d7rATn47S3oCwggV1c2wVB
	 ItGa9+6GS6lV41oeAnaXTPOupB1kkm9a6Qemq1MT27MeVgRqLJa2okGv77DmivZpKd
	 fs9zP6+p6t3jHoWYG23VIRLrRZxWd0clJqaVJBHAzSpG7L74L3fpcPKlFu5ZqqR1K0
	 jB51d+aZAX+fecxVKZrp6H3tB3FN9JfMWr6Dm2CRpqBLPcwI34KHZed1c5sMBdygtx
	 WOKjzNmDef/tEoj8K7Wpwl+UI6pNX5CisGcH1AJhWO0uRPARlz0Afs+AK7OR0V1Dn2
	 fpe5lRznvoJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFE1C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763335357.7956.2158995529323097065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e94f86403ffa00d23dff26019aee36433f7a7c943465d6a00d0f067f920a17
Date: Thu, 23 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737633353
