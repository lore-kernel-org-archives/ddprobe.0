Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3126D49650
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723607754; cv=none; b=Ff7ZkX2t4x0WT2dcoF5He5iUGvYFNjMOy8W38AUQLf8qC4h/4FAr/qd6RFzhJGOhK1aOKPAihRhNBfgA5lC2fmqs0GHyPDj+r550Tg6kM8bP6C8RNVzIdQqvoGh4XqsEUwS7eVTEFkhK5soJVy6U4dOakCesnfEO/5T0SWo8HEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723607754; c=relaxed/simple;
	bh=W0vsLvRbvQX0/hk4pTvrSkMXT8sfl64Y3ryLb4TmvNc=;
	h=To:Subject:From:Message-Id:Date; b=IUQZxAbKjuFMvmDjOEWPgwjgv5L8LuITCxz6i1vkErzRoukPacFSnfYusUNCEAtcgIRo3pSrK9sHFza0Kzso/PaA4yEHklpHKMkoaRw8oTZgg42LW9lXGEialE/K2s2XfqEsCD3IIhwodfPcXpt9lbmsr5nVf5l2JEeemRx0m9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWcJm2o2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWcJm2o2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2432C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723607753;
	bh=W0vsLvRbvQX0/hk4pTvrSkMXT8sfl64Y3ryLb4TmvNc=;
	h=To:Subject:From:Date:From;
	b=VWcJm2o2UkMMcUDBHiAViApYQDEDwT+UDx5/CQCVLtZvpe1ySCdst1eU5il6SKuDA
	 WvOEI97qlee7g77MSoJU+xtOqkB87cb0Mmxcu9Ui8G02tBtfnsbdwbRH41UKvEZobh
	 x7qLs7KbVe2BvRwXetCE0ipn8oL0PM/BZTBXZ47/F3QDe2Y2hgEzqzRZsZX5FL/Tt2
	 7SqTf6ebN/6v68UmWxMOnBFRftnMGxWR1EAVNE+/2jixUe1eTmHIhYwkFirnXIf/9N
	 aYBO6sjMlZWWEloozsd703l+t7pfB9L5pV6cz6rwzT8jnN/298zVfF0pwvH4GCImoJ
	 vMfdcfCTLh+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDCC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172360775359.14098.12113142717354533927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60711e6f15923adb4af01a6af6340909a0bc5f805743d1409a6451426192ad7
Date: Wed, 14 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723607753
