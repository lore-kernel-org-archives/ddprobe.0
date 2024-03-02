Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF512572
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709363897; cv=none; b=nMdeeohcIrs43CAmSRlt4fHQkHNbbQoyAq21OmulWDOJ6t8i6u/9k6INS9QoZ2QJmXJiFfA388+SD20HYIMMuryoBS6YVLBVmj4pqq4HrrIuNS8G35EBC96u0gprs7sqMIFnqwgGMnfO1xwXKGI4rC0KMuBxeyLEylVUvs4JjM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709363897; c=relaxed/simple;
	bh=iHIz3DOOsRMvjW7wBv1Z1ajFPCcedjwqn2IfzeD6NNU=;
	h=To:Subject:From:Message-Id:Date; b=Xtc7LfHJsM+ea9hrdFdtwdPA/bYNOVeUQehfHGcQx3pqg421jwAgy4d5wJmk0JTfs8FpzrtNpYaWPsHro0foeIy7IRWX4xryy7NvWqq2wyxt1Xjab7JoqPQIhmJlvCuRcX/oc7flTouI/wfjs2dOFkcGlve2EDFgHfweJXsV47Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwNOK5au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwNOK5au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84164C433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709363896;
	bh=iHIz3DOOsRMvjW7wBv1Z1ajFPCcedjwqn2IfzeD6NNU=;
	h=To:Subject:From:Date:From;
	b=AwNOK5au7j9gxhZ3TVP/MixhcB3ssnbbxVdgVL5Y06oodhHouw8/0fysCCcrEJepk
	 2rgSwJNiPDla3KnXNqvdTBocM6dc7vfuA/ATqgtyP/C1/TPJhJ+Eou3g8NIHOpniuC
	 66hqcPxd4jFJhENAwySULpi6S5IKBuNlL1ygZF/faxIdCgjdOgsR8RXwBphPv/AMib
	 kh+RzJ3PEcOrrZGTWPA0TLR4sacVcnD0vZwfVCN4gmgKlgN2vVKZU4Kbs9V4EF7/hh
	 lFEuVO40I7hjoUl662/Rn42c7lSumToWBZ4Bx9ZKEV4JTp/V2bI58FB39wS6vwP3Vz
	 RkQ3Pxab39wHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D6CC5478C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170936389639.7112.5930850674812822001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099f76a8f82a9a0f528297502f9ba82c5f6c8eb768e92620bca4933fbbb3bd02
Date: Sat, 02 Mar 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709363896
