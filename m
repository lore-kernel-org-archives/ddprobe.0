Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D86818A6AE
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752038394; cv=none; b=LBfQmXHvO3Yx7UIpXNLurwEzYc+GcCRBS25BtuVizGf+aaYEismmSlDwr7ONRu/AqmjgE8fSVjvjDPzbtdjIKwchSfeWpuLjrYf25PuXtHqO6i3V+xbMAIzWEyonALwrlbF18qBb7fey4XRSkq1D9LUEHcL6VYbPlheUT48cD6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752038394; c=relaxed/simple;
	bh=DL9gk6SmW1oHvaLA+exzu3xUynDcoGw6Cl6brJL6FT0=;
	h=To:Subject:From:Message-Id:Date; b=JHjTwL6alNQEvZaP+Z9mQ+GPnaIuGE/Qx5dzDumtdo1yojqzWIktpmQaeoo43rOY9pOYZbOv7mA6kmvdonkjquCVIvQnNymCgF+QfVCHb3eht4ycyPnrYCtT5UOjch03XgtSCiLmk5Nvxjmm40aejcHsV+zIxn/schhel+5mxNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByDCUslf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByDCUslf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752038393;
	bh=DL9gk6SmW1oHvaLA+exzu3xUynDcoGw6Cl6brJL6FT0=;
	h=To:Subject:From:Date:From;
	b=ByDCUslfETZQiHeHZGCPo2Oq/YY6TuY+ZYFI8Rv/LKWwKhsV5p8WiKB/vc6ThO4qn
	 qQgd/jlyMU84fKTnDoB8E52ndAhaRe1rFM2xTE0uJxvfXgZMhzMjhQLtfSEsZPLrw1
	 pKy+kqtu5fii8D8EKdmoi7oQrS5Tpr4BLP6HDFfLHdUdW9TmHSDP2OFZ60kxUl4/Aw
	 EzqXAUT6GDOjSw4xInLdSqqIAoR2IXxDB+wzOojWP/DA6Dg4prOKj1iNiFbfkdFJOy
	 UNr7zc7ZqZ4aq4SP5zSmPk3xj+Rjik4ohiS90zuc4CE81V0LWtv2CQUlHvfAO+u564
	 1kQDs6qN1piOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A1C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203839358.22815.1473568112566089005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3731088d3b53dafbf4cff9754c809221f9cd11a20d6f71a3e79f3a084a5096f5
Date: Wed, 09 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752038393
