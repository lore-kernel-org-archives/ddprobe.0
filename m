Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9B221CC58
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783534714; cv=none; b=IzdUOVF6J4iX/ra+fkfxC6aIqH7pFmaOsnbL6zZE3t+naZ3+Cm4rN0D7/HuDuovXNvlshS8wMQ8+CyAUBElLAZNNgvSC6yoPXsLCCUzQ1yWz3ZKeYmF68mc1nZARKrlCsoGIZzV9ajqAT1jNSCaIWZt2Tt14ZMPFr09UQnP9/0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783534714; c=relaxed/simple;
	bh=jQWq2ap4btCisfezagnW3BU+IbZF6rhW+jBlsznCzMM=;
	h=To:Subject:From:Message-Id:Date; b=AM1JaQaJTRjfeoy1Iflc+sLCrn/2jbw9SZe5h2VBza5wOh1WRJJ9uuDX73q6Su4WWF+ZlfCb8fWR0dkOrFAqXXrmCMRSLoC9ZM3wS5W2WvU8+jJmWUzJKv+Ixavw8SWYtlDgsOb8rlkG/9Yul00uP6tPNOREZoNJqxF5XBk7jlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A75jfskY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A75jfskY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B3FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783534713;
	bh=jQWq2ap4btCisfezagnW3BU+IbZF6rhW+jBlsznCzMM=;
	h=To:Subject:From:Date:From;
	b=A75jfskY8hZGwo8c4On+ZJmUDLnP12Xa5y8f66ioOHW+YDJ2YpUsp5/lEKexA0/CT
	 EBXLfWtwGWKiCj9LR22W22+s4tceDtM/UNz7lGN4HSaooiqFQA87ROy7wwzA/sP+pc
	 9/BWwV9QtJKqjOg4rqCsdK2dBBvkkzp6d2Ja/hXAfu8SMOwTBRxSuUPD91qr0K9ekg
	 9iwXGOyYg/bJpltAjRNB+CyLN2Z4c27KDxIi8jW7Zz4Zm2DCZbvcc8wTs+VfvH96+B
	 oR7Ix1rmkKVTkHyiPl0+5vLW66HEFEUb48S3O/TjA6alKdVUVEKirznwUC8QMHlHQw
	 IKm3poeQtyblw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B12C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353471369.6692.14855203011392041081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc690d568586e60ebcecce15c8328c48c167597873a178ef86185f4febc41f1
Date: Wed, 08 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783534713
