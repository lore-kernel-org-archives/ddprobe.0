Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239E9309F02
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766474634; cv=none; b=pm//90Wy0ac2OeMUlb/FtH8O1kC8XYsgK6rzhQoOmsoHfRISGI1FxJqr0oJAdisZvr13WePtJe56WzsoJqlQgPRUCPdUXgeIn0e0v09jNCq4EElH6MFC2hexWd/azSACdhqsM4JRAHwJhi4R5Tnpzlzs82gS4dBRBIdIspkSvFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766474634; c=relaxed/simple;
	bh=aWJt6Is9ZGNRosT1L/cHNkizEOCSkwSFJaE1MxVYRlQ=;
	h=To:Subject:From:Message-Id:Date; b=OWLgDZ+clJKh5vQ2ZNBW1CJbO13OX0CG9vUyHBGl0xTfsspMJgwpe6eK9rlRQ8dOZwPTNhednno492/Sxf/kvFlxviv0GTbsLNieWNC/d0ciPV/eqdbt296zEUXnOFghkzEsIWXZFvKrdBW9KvTpsVOEqNNpfUSlrBKBmGJnRNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJmRRmq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJmRRmq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E99FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766474633;
	bh=aWJt6Is9ZGNRosT1L/cHNkizEOCSkwSFJaE1MxVYRlQ=;
	h=To:Subject:From:Date:From;
	b=uJmRRmq1wOwwijRbf+0bGqLxitQUBQydBlMqLMvxr5j82i+2Ip449EEJWWOZcD0qp
	 PrR5RbdOCfjNgTMpUNcV0mcJ6Ze7RHVsSILSodgCtK6aAgz2F54qIzHeHeDAZlAPoC
	 +zlPIwFciygS4Kvc5tljwhKyAdnu+pr0xel9j3SeLSJsC+Lm2Wp2PC4H5nbxutfuF/
	 aRAKmKPeuKBP/ZYcmyRTO9hozMs7ahOVGjRRZk4IgXODFyVYfM2ETrz5i+ceSspnX+
	 zuvRJnqN2mJPYKrNhKK5YwbiiqXdwiK4DGUA2Ob14rAJGKXk05NNdvlu3IzL00SkQ3
	 Lw8GVVno+qZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1AEE6F062
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647463357.29334.13633062950679652232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf86c8b02b4e59671bf67c10fa4b193ac413dae963b35b07b99f5c0a8bbdef46
Date: Tue, 23 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766474633
