Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F6F39B944
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790667034; cv=none; b=rS0Uzu58qCVUWIwPoiGnwMsRivuPJ8h1KXaML19GHk//BhiUyNWCzTaHDvuQpHmJt2ix7ywt6sjXNDeO2xg7rnY1G5GiC8mLP/88OTx0Suw4xJ2b2USJl2LuGz/4Q7oe0Fz1gqGtir/7gqjEh6hQKdgMm/PMrdrlteKVwyPaDEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790667034; c=relaxed/simple;
	bh=ejHaBtWYoKeiLBeRovZyVFDuw0A00wFc7wkFC5vS4tc=;
	h=To:Subject:From:Message-Id:Date; b=uOzmMmX1YQ05esL0P/50oUCtOvWJ0oRiVp0QnFmFJt5EjSZnfUbeQLAWPnmnQCyoNsgcqRjDOFubebudPkp2Ew7Yp9Y/SHdMm+JthReVZsro8wLFz8W+d46L0dMGKh5eaoTEYJRtXEHJddriYAvASV335pVgR7W89zazX4EYHVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gs/x7Q7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gs/x7Q7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E149CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790667033;
	bh=ejHaBtWYoKeiLBeRovZyVFDuw0A00wFc7wkFC5vS4tc=;
	h=To:Subject:From:Date:From;
	b=Gs/x7Q7+57iC8jnlBNSh3DwAY42yvNp9U8cTGVa9ZgSfAk++58N3Gm/7Ab954JrIi
	 eGyFx6H4a1lXgVMd4hilzFL3kKIURv+Fe7DYIgriGzJQzS2gbNbuaGLIivCZb9ptXf
	 sgaasbFQphJVAkQ8hhLHtBNpbMQn6oDzHjPpuF0YLq68sFB4t+kaA/aqa5QJD+TYzM
	 l/GUYf9TBFg6zMIYSJCT/pkDKaZz3xtjjwDJxFRP2hAZ25JvI14xh66wsJGuJxmkwc
	 VdxIUKsv81OcrEJjWOYZKnRj7YU1Vzuptt10sn6nkNVd4Gmudo3rMwGJyLV9kAkLpU
	 TQoBxo30lSP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC291C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066703375.2285.13798147875246493774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d5cdf54d585e7bdf2481dc127dc893f1a7b27c1891b7b3390084d037681a44
Date: Tue, 29 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790667033
