Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3453A20C490
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763902314; cv=none; b=Ol+8UPSedi3pYZ0uUZCXXJK4PKK5Fi3d5AcEFQwHKeI4K+4Hi6+ww+DbkDEHBuFnHuGxEtSO46/zsW1FDwUv/Rbq5sblWqSbt2nnCGTp72CGrbVIXFT5AzcSQvTfEiBWR+KrTeIl3wjiwa46rd1EQkU6H2gTJksSyzlriI1q1q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763902314; c=relaxed/simple;
	bh=rYw4/7LZRIJcy1CtJTJk9ElL6pB4g6eE/4Rw9xkts44=;
	h=To:Subject:From:Message-Id:Date; b=fcmRNk8NpUc0CGKjndVy2+pTKlI7eqWMHa/OHOkVD8RxF1SQlt1FN5QREn+vUfaKu753SCwWVVT/QqNp4mu5qs6zyLAnHAY0qLHYLwq35YJM/9CsJa+RgLnpphlfghwRVnmaZBZ/vxxjynjkNE5woifRbrrD66h5NV2C3CPMEyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEnp1wW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEnp1wW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B8C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763902313;
	bh=rYw4/7LZRIJcy1CtJTJk9ElL6pB4g6eE/4Rw9xkts44=;
	h=To:Subject:From:Date:From;
	b=PEnp1wW8TUekMl2y+24l6r22Ig6/iLbMRx4NLprn3N90s0VZjEANE4r6smVT/VDvA
	 rn5Zqc2R+MRCJDuFv/k6B0hEIh9DFMc46LNJAXwneE1urqHBl9ncVPZ81TZQj5mHT/
	 asIUCh14bmIV+E4wLA16WXAU30cpfmSJ+aY2C5fZ2YL+ZrgMRQZkuBgPl/bLa3bGgd
	 T/iPtvE6GxBeZ9C8iQfnAOPc/IzhuTKFchCH66BO514eTNVEGgoMNFMO1swyPGdsRG
	 oJRd02E1XNuU9ninsz9R7Pn1tg39Act/sW7aZGxFeG4Hta5V6jEnuhSjqzEcyUj/tv
	 06Vmr9hEPgzOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99219CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390231359.20371.13531421496522241934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143db6992bd628eeceb142c8bba7b2a9b57f8cd55250eb7d3860bfabd5b65589
Date: Sun, 23 Nov 2025 12:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763902313
