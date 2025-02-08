Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F44E6FBF
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738976154; cv=none; b=p+8o0Hci/W29SgXgjBgx8fLDWj9ab8POr6W5+jTQYn/j0qTWQJ7Bq7u7TAjadDjxDvcrUxm3GCoAZqJN0N72QwpkJCj2oXGUsIEjJdeFpDc+hMq85sFrY4IklEJU+36+8Rn1BPPsb0OjFCyOX0+6qyS3OtsxSa5X1KAq4/0kwoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738976154; c=relaxed/simple;
	bh=KcmFX9Mv7W5a3RgKcypYzgpxZAAmicsAmdZT5G5gCq8=;
	h=To:Subject:From:Message-Id:Date; b=U4Rakcj/ETJua4Jzdygh3ZpFjF4dr66tsayW9KNL3U0u1/KQApbN1ibSor7STIHmL42TNnKdo67z+zPLWfExJcs9DKFNa/ZU8Nu2qmXpRy0sK7gPaNfxGkYttNiNi5f/O6+a6zQA52j3JPpJFHEGQq3vaSgdTDusnaf/131lHSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvx59S+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvx59S+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ADCC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738976153;
	bh=KcmFX9Mv7W5a3RgKcypYzgpxZAAmicsAmdZT5G5gCq8=;
	h=To:Subject:From:Date:From;
	b=tvx59S+flM4fQtk47SufaRSL/GOKd+/SAB/9Aw7zuv970MT4dEC//4rgnNurGxcIn
	 YJ/3TtKxxmukyz2GSdIyBmZhGI6G/1ON5cnHs2zkoAOJZfOkuKWhE8bh6vdUzx+W2X
	 Ni/dEHub6vbkmDfL9xw1zKe/f8EcFHYiXdkhVcUfESvdqEupxBUJx1eMGSyZhrEu01
	 hJ6f4NmxL5a5bauQF/Qpuzos4LcfyrbNO+A/ZK+rK3qnY7Ak2ZK/TzdGsszvqhAIod
	 bs6AjUmh+VvZn8brCR+mnS2JhjUWg4/fHh3RiGK+DMcL8asj8iNQSVeYhcQriMP8ge
	 iUIFPnbTh3z6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972BBC02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173897615360.4000.1134808251645784027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7744786304e6cfe02762ea25c24c86310d7275361b25272ac3f253a431007b
Date: Sat, 08 Feb 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738976153
