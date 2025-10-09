Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B51384039
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760051994; cv=none; b=hJKKxehKD4LvS3vFpRJe64fWPmQkYwY8h8kNpmW+SdgU7gkDqETZ6/7jBd61QzF4BTanbi/3u2tmN8j3M8N5EXZ+s6mOU7/HRvslfqU1BLGgYXoIaLXNtwr03abVTWcNFsuQcg97r/3SKHMp3p39GpjlK7s1NoDPmUS2U7j+RoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760051994; c=relaxed/simple;
	bh=KeGtmgN4QWMIsZWEo2qsU2QZqlLfrWYQg5aUcidX+IE=;
	h=To:Subject:From:Message-Id:Date; b=XjNVSp4Xj65uea+BecAQ5BckSoEHaEvJX1sXFpBHxzSifE9d17FiPMh4A8CcyHKCQuXaUxjnhdeqWygkTRdqIQPz6adK3e5XPy+ZlOqAQEl46YMUKpaqnpxOT1tFhRz0F4pWldup7vuxfrUBvlBQjAJz2UE/inZD0thtU74F4QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObJupTPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObJupTPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD4CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760051993;
	bh=KeGtmgN4QWMIsZWEo2qsU2QZqlLfrWYQg5aUcidX+IE=;
	h=To:Subject:From:Date:From;
	b=ObJupTPYfWExj+/XQiABtQ5buO7cT7F0ngy7aVFpX5FIW9/+pObF46D6JD1uD8u+F
	 mWgA4ODodswCEdwbOH45bdsJO3k4z054xIk/twa+Ng8JhbjgOmjjvX0dWzxTM/E6K3
	 Sl7uN0S5tw4nENkueEncbECVrW7b8Db7IyBjCg4zve3EDdxoEjEqUOiaiBmJ7ZFaly
	 RE66dbXWsuf5MqseW/N6bM3k2oR72G7IOkEWlLGEaaM2qJrz501QN/C+IuMVmlkusw
	 +hAufkaAyGD4Wr2ORfIQlNGH5tqb3K+8LhyEaQHthg9n9qpNknlRrT7XYLBtevlEvd
	 mAOhfPgarS7gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9742ECCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005199358.8243.10788655303204120154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a055907dd1a9c0dcc8e2d19758908cbf11ed89ffedcea90f48f326569fed52e9
Date: Thu, 09 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760051993
