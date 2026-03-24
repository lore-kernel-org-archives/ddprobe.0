Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C671DE3DB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774319694; cv=none; b=BHML94VGI4taq3dB48thPY+ofvR+lVrIcm+suv/BVYSwquylDvnSolv6Hl8/QMdBI3/QI5xYbDkNpWiIFeT2vF5Ua7cQKW+vt4FsstGFsZ2fMGjpDOXIOT3mJ5S8isK6VBI38KOHY1iRT7FB4Wj51msht3HGGF9i6GKeR66lx7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774319694; c=relaxed/simple;
	bh=HHuMzp24jZah4fycMsSLcCBdexl7dWRw7vR7ILWdqMs=;
	h=To:Subject:From:Message-Id:Date; b=oX9MthPhWRBA6EoCNFRF3n90urWuInzeS/cRt4jpoCbDVDI3YyqkR0BGKsOBJLD25Fj6cAC3vnH8cet9dOQ0o9SKtt7EuuTPFVSLt8B4oEmifO0nvdJqxYHADdmy1OgqFSMNDooXrhGq32viRgWqXm7LTrElS5Zk+QSNQR45E+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOfuP/pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOfuP/pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62CFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774319693;
	bh=HHuMzp24jZah4fycMsSLcCBdexl7dWRw7vR7ILWdqMs=;
	h=To:Subject:From:Date:From;
	b=EOfuP/pvxPcs45qmkccFqJ//RcX92rpC9pFG3OZL9KO6dtioyInfd1KaPqcFB78JZ
	 wzxEMS/DpgpIkOZ191yniFJZ0ppeXRKejWgbHmi/2oKnv7UiGmWeVaMA2ou0IsrdPZ
	 T06mCRAePoLsOazWIUPBgQdnHBPc7fGf+agR3rQ50e43Rqo5SVm0MOVgBnrjXHu2Fk
	 +hdQq9GpCwz7p2CmgOQ72rxNqWAc0UiBOqyyMe0hsCayiOI+ltjPh7yLHfyWnLwln+
	 RkSUsZSp/vFl0TmnY50L2VWQDBMVlclBpC1dpegjbsVoUxSlKmXl2QmAOdlfrOJOGA
	 bSSW9kBEz2Q1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93628F532C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431969358.22547.5012559639016904635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8fded87667701c127c3d3f0b4841cc1e3d8b0eb13da1c62131d9a234aa6cabf
Date: Tue, 24 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774319693
