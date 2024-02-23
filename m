Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8F64F214
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708676897; cv=none; b=AOK9APVlDpAO+DM8zhGpnIy4KOT43Ga/FIHByoeLFxTt/gdhji7c5J7yJTMEW2jcF5eImTj2NEAFTFgPYoLchblkXqaQsUJ4CTBxragFzRYcyQsgbhiH4KRo7hLRmpsl4pPyAIQzykLZFjHEO3MVn2/Jf9AYR8/OBbzPn6qEHIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708676897; c=relaxed/simple;
	bh=iDiRrkn2M/3rFWCIaDgS3ezuo2iDo2F7hCLXCdegR8s=;
	h=To:Subject:From:Message-Id:Date; b=Nr7PXhSyBBLrsRMe4dfLUEsHS/o9CePLNUcyODDWqm7bywiJafRr3Gc8xzIoNzryt2v5mJuJtHNZ4+iEJgUW6Gu1VMs4oCrHtBEBDb60otqYK3+EVjPRe0Yx8ERP2/pMYOSn7i8jDPTqgGj9fVWsFRapUfM38bo6cPLSkD3PoeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujvSRDBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujvSRDBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A40CC433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708676896;
	bh=iDiRrkn2M/3rFWCIaDgS3ezuo2iDo2F7hCLXCdegR8s=;
	h=To:Subject:From:Date:From;
	b=ujvSRDBmBd/Jmxbf1s5tpcXLvej5HyluoIJtId5FliyP5nV4Af0sKYULYZM51RsPC
	 FjkoA0dbhti3zL9DgQWUuiozmPARQ5M1BtoIwnWP1AzcdlcBBQ7i/T6veCTY0i7Etk
	 5udTMuPlwOk8/rwBhKFtkmtPsn/knY2FgZCZ+DtDSqKfs8i3j3QSfILH7Y1Dlb1V6F
	 qjaIPVMOYnjwRb78BHseExoWfYCs1QV8q89gAlunnG9HvSdtADJsn1bYjjFh7wimFg
	 8wRC9hrpZL3nfatMWnGpCxc95KKHuERPEycNZADREr1isMm22StjZHLLp3+d7rNCz/
	 /TV1/rHIInsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62204C48BC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170867689639.2132.3275831952202578330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d10d8324d38b3341725fa499f70b117b42e3da8b7ea06b009cc12eb675434b
Date: Fri, 23 Feb 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708676896
