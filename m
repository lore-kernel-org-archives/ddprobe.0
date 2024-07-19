Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE122F30
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721358354; cv=none; b=oH739+1MyZ7o+LkivjBRV2iTLC0nV3nC8kZ9V+opkiIaUn31meq260x5k1vvroYX5vOF++4FK2uvhwUOP60fOppqt70zXxGNIMu8u4pa1i0GbguLF8u2qQd5wXYg4FSiauFZ4bMVp2JogS56WJHgDoP867r+VE7fgPJ7iR8vX6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721358354; c=relaxed/simple;
	bh=ifduqYCGp9chv7VTjcjgR1iAeSGOgYwfiyt2OaBKVys=;
	h=To:Subject:From:Message-Id:Date; b=HhafWulyAFGEq5U4VOIzI7tlO+mBw1+RN8aUDrPeTptLEYuly2dERiXB1goxlFTF9Wdcyh4muPiZaGxEVWWsfLJQ1dQUA7dyDcYCtXZauoRreGaiJfteofn1vxQ6qWIBh5OWa90tuLaICwcrjd2SJPbf9tohNJPks7CjQwg64dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIyuAok3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIyuAok3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A64C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721358353;
	bh=ifduqYCGp9chv7VTjcjgR1iAeSGOgYwfiyt2OaBKVys=;
	h=To:Subject:From:Date:From;
	b=dIyuAok3C0tACznO88KsV12p4xMjMAz/CfM7+6nm1vTfiKsnr7ouVUew2TNA8Qska
	 0hEEcWuYdC2wjSjqJJyfOlCiDHe1lv34xJvDhJwWXIhXhIOpiHcalT1N82RE1SZAPs
	 HaxPxlbStfnT9MEjXXAiJDiULinTAuOzlKHm85tYBTqUElUYxqoB1DC9E7wd5RlKzu
	 DKUYYKMAbIOA4TFjAD7sEwZI/vMozFiN5jTZvi5zvRbvLPguWT/UTYlVUb1bKmy3DH
	 sHqqR3pRrIJtUHu1SCEOvBQnx4Hs06voZU3C541X7Kq1YklUr7qo2cPJ3gbJ4nkIwP
	 UXUYfdhd48BdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931EBC3DA61
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135835358.11238.9975347450719467401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc6af674b7cbb810e20aa7c209439c24e8520f520117236205f690bbe15bd42
Date: Fri, 19 Jul 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721358353
