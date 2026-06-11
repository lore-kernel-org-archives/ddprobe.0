Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B7936F417
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781211994; cv=none; b=LAnUtrtcUn+QCIxMpl/dFUoDzHVdPNLkd8e43semeC0M1KTg8EAbioPz7eUX7YH1eE2LJ4PE179cyXt3NvkfqCAAypS6d6gW9tNwSulLAa5ivxiE8Cavb19/4cGP16lFUumONYoKwtl6D1n8eObr5pVHkZaQcFkY1h5Y/iAGNTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781211994; c=relaxed/simple;
	bh=UQIfyaLy0fIzbxOhNvGga/NaLg3CjBlu2yNRKLg5DMg=;
	h=To:Subject:From:Message-Id:Date; b=AP+CYMt429iyyZCNs7Jsq4cqYwpBT2AsoKa+y6gaEUxQO2zCQlxOuDgz07NEmI3CPwujg0K9K+6zXASdPxlWnUdd5KlK7uyR1vqkfvZ05PCWMwGmRKtIf939n10X3PbDz2KdzL16uHdPnzAOnYX762SnjGj1qcuGE95ONbvOk1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGJZtRWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGJZtRWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD09CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781211993;
	bh=UQIfyaLy0fIzbxOhNvGga/NaLg3CjBlu2yNRKLg5DMg=;
	h=To:Subject:From:Date:From;
	b=uGJZtRWn45/Fp66rwjlrkpyv4KSCRgA1GwesOw/nM7lMm63cREsPQLTyMhxi8IuAC
	 6jIQs8zo4JkhpQ5E2tHUTpfW2ZJwk3G7A79PI8badyRDfz5X+XjeAzdfvi/3MyPiz9
	 QvfTyYXO6xXPXLOWV0fpkgGrZvBoGkRiSpTyJmcHNjVnvqroNHhNRcdiqqKB9eKwQm
	 RIldzufPbxdv7vYHET/s9eVCobrrihMuqtVkMUHdYkIVw3eGyZjaep1ra7Loz7K2bo
	 veNOxhbLOG9FEGzSWfWrf6TmufTzj9f8xB0/lbRMALlZwanT7xXHx2gBupqWBy3agT
	 IF0FHKG8Gr1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B49CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121199371.19107.4090607097896509215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33e91f48b4e2c94b9275295856f4d85aeee0947ac363fe873ae0400d91443b0
Date: Thu, 11 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781211993
