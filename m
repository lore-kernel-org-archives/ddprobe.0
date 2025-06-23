Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF9B251792
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750684193; cv=none; b=QNoOsyHESAgEysYY/xDocUk0KtOATwZkZNkcTFGjv6CqZ6ihixrUkwrjpiEoPmEnkK6RLLkH1Ry0fcJ8YAs3qqjjZ5dejb7kAhatXuocwPXXzwnAfzFYBeXyJ7SRA7jPtthBGbBuwhudoz27Z/h73DFDdW47qgoNbNuxVIn02V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750684193; c=relaxed/simple;
	bh=uHjBtMm7DktmoSYArD/V8muAiS+sy4eQvVTRiNU/B88=;
	h=To:Subject:From:Message-Id:Date; b=UBs3qFqPCEpiq/3AsKJjNSxFLsORjG/0jiOnizFjz86Fx8ePiMzO7A6+Rxc38kYJeH+rcIliGO4FEfYSm94b42zQU//IuOXqvijcVfjnz7WvuDq2z7/k7bdHehIU2oxttoAhyRhxyqKzsgWHrbamtwQmUgmU8cnYeMRlizXqk2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTnBFfyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTnBFfyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9B5C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750684193;
	bh=uHjBtMm7DktmoSYArD/V8muAiS+sy4eQvVTRiNU/B88=;
	h=To:Subject:From:Date:From;
	b=gTnBFfypWBtXKNGs0aWZMtUEdqGOMGSkyHPLrjrXLjTkCmlUgsYbAkoX0RUKoVYky
	 6Z1x8t87NcFTbSph6cy2dw3XzCF9n7yWvWyM1142+rstyEchGtUKH9d5xery9bulbA
	 scrbT7goMK7jiWmQmDlp/yBErfEdgzuYx8yu22sB8SDDhyUMFboxvr6nysNAqKuKix
	 tm2qOyxkGnpGqFesehzkMFiM4wsRFnuMdA002CgpXA+QDuc+R0wrX/UY4pQWLmapin
	 hsSCpgfT4HBco1u7ZEvO2O7FAAsYr31VAhaUTQ8BssjSlFAedtU2Sv9Rov8tzkwoDF
	 10WeEfscHxAGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDADC77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068419357.12512.4370403595462353400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5e6285561957eee11a21ff28d66092c575980c0c12d6867b98e84714266c95
Date: Mon, 23 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750684193
