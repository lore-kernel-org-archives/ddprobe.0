Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8781D79B8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743545994; cv=none; b=Xi3JRw2m/qjgtStoFFMsg6iXZIxAaXljHdzzLgnUetdx7k95MZAUJRXRLVwxRFNpxPIt77zgXjF6fgmdzfsM2MdiyPKtH5UQmrSk2eMx84/I10vkidMnH37W9FQxi9QHalPhlp1gAWxv4RNt76Uh6tqtLYHGRxRCB33mr4WAySM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743545994; c=relaxed/simple;
	bh=m25PJI1+1z/hJyINakkCXQQQyl5a4CtHJx2ukKIGwvk=;
	h=To:Subject:From:Message-Id:Date; b=WWxNlnAS2TU06RE4CJqGzlEmRxq/+S9RLURD+LLL18R4dDeRtqa1o+dbhpKEWDYhmNx/8sWueAAU78KAykrrZ4ZxkzT8Wzr7vnDE/S50lhtstfQksM5fdjZlcNK8v/AE5mS1JoquHqLeUusYjOyJNbK+kTB9s5E874SaMVnCaBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFzVu7hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFzVu7hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0E3C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743545993;
	bh=m25PJI1+1z/hJyINakkCXQQQyl5a4CtHJx2ukKIGwvk=;
	h=To:Subject:From:Date:From;
	b=NFzVu7hjbM+FeusRLv02lBHbVZ2NuoxI1v79ERKxzWv6LXA2+ea47ohqwisua3B4i
	 OOQ3BrP3fQiqLbyMRueW0tNDusoCED5tXbzgIOWhX80wjYq7ZsdIckoTlDzxCWAXGD
	 cuzzzYP8DQE4T0IfdAkenyjEUBkQq/nR+ct+sP30woyfWAT3Epm7oprsd4Gzq7bY3m
	 51o4tmNkIm2+xtqj8qv6l1fXavKipCF0T3qEkSJDwVvFQO7MFGB9th3T8EmDFolMED
	 xcmLnhcNqv0Sg7/ocV/kHIv8BWvGUYWL1IRUNH8PtRh1Tf+xdF4zA/wzDN62mjUyeU
	 0vLfpHZeWsADw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB2DC36017
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354599362.22747.18411834746309882548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e0c81838444bc715ef9ed814ea8f5198e0c59a2fede96d5af82ef82685dbff
Date: Tue, 01 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743545993
