Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4946C2777FD
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753727394; cv=none; b=H6Gjx2EWPLlMzeN+MDAsb4rUGU/YNsqt/s3Lu8GsTdb9l5PDoa2BruIfSJ9asANrI+H29HlfS8MiyVtphOX2wRV+0L4jGJa36DUYNffBSr6Dz2FI7fYi8TEo1DPgiTnBqu/cZq3y7G9twimzsakte+bJep5W0soWkB24pjG2VkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753727394; c=relaxed/simple;
	bh=ZT8I5bsUsyYQmNXAAk8zT23JJRRP2VUCgH6Ks7EIsOw=;
	h=To:Subject:From:Message-Id:Date; b=mtPMfBKW4U4degf4PP4uEMcJo+RuH3NFZepSOWN1ViUL/4IWjMK6Uon7MTPGnfENUYT10vF8k+Wfhm+Ae+ybQ0UiclzpZgxxjWOzWkiW0qCF+O25DlxoHRUQbNDERFRvT/3uejOQjLICJGoaCIQLTvWoBHo+tRcB0akoyJMt8gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7LEN3VF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7LEN3VF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF5BC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753727393;
	bh=ZT8I5bsUsyYQmNXAAk8zT23JJRRP2VUCgH6Ks7EIsOw=;
	h=To:Subject:From:Date:From;
	b=C7LEN3VFi4LYQJg6BryNj5PeDR58D2KKINBNuNll1ipzx5b6Oen5iiePTh2AJs+eJ
	 Czzav48+qHnQGqfA3OB4h+j54mICnDAtLqVl9kTo5A5v301xOoSJq2G0JzbBlYbdo8
	 G17ty+5AlQy3cfwa1ErcNaAap0L3sIcfuXHCPaVuymry+h4XglkYa9KtRO8v/117RS
	 teG1hR8N8CDhm7KuLi2Rfh7xmZ7LJP35IJdcY2G38B3wfmDNxZX+V3TJQ3dypzTJ3Q
	 7nCLfXE+09IHQDE20uV2+8i0TEc9ymRiablNs+e5/GRqFEfrok+xDl+4SSKRqfSmtN
	 GYmCDtvarOHmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81B4C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372739367.2583.8199046950072069516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb32d6dfbda6708a04995f8277eeed0e1aa2b8c560ede34253c253e164904f5
Date: Mon, 28 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753727393
