Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102DE1C36
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734963354; cv=none; b=uzdO46+twIOVzsvLbD5BMgzY/AIY+xIrdozYB6iuuTAlDetrMHETQ2x7HwShFS4/FjgfO1bJlnSNhzzc1Fl3f7PgOTTRS7rYlOUQKzSQPcAs+wMl6ZkiST9zzWR33KjlRfY72AlBG1ogNst0bHzEeoX9EofvMsgFu8QxqcD+ez0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734963354; c=relaxed/simple;
	bh=9Y912ZNym7JmveNkJzsqQ8jAO2sDbWq1tk7JJBLlL5s=;
	h=To:Subject:From:Message-Id:Date; b=m87/S6PZfKc20k8DtlumBkV4TrGK9Nh2vQeJus+Mv2WRsfaGIuYEv2vYaXg59m2gbJsGr6sB/gPYqph0VNaZothbBc3C3SFVhFYFeM1QW/g5Y6WBMx94vKPIFU9TKHmDk2af2yL699rTT4XRgRv0LB68vE+V6Q8sh2DjsZY8fSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClgNifWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClgNifWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4939C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734963353;
	bh=9Y912ZNym7JmveNkJzsqQ8jAO2sDbWq1tk7JJBLlL5s=;
	h=To:Subject:From:Date:From;
	b=ClgNifWd/7SaRl7sZFihL1KWO1jUXBJVLrpA56cyXxKavyWwmjFk3OtySqbLNF93Z
	 sjDHsfY15QkQz1+WwTdlHN9THWudBgOll+Z5DGuj2W/7zdoZvn7MSb63Js2Dz5ELDr
	 OK47tDwQi06DvgUxQEfZPVBSEhiYT/sV1YszV43frukmoOTy3+2JOVfPbUstujc1OX
	 o68i8fmrl8/pVacCsgJoPNggyYgwY3+6iuFGRZkVLTt8pyqVIpyZPL7vSDA4jIBR/j
	 opj4esEmT93AN4waK0yXOhDTqj5vI1p4IJFXWhoFueeKXkgx/66VAzLb8y+DFd+7H2
	 onkf4skPhw3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161BE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173496335358.15576.16655101012616386902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6539eef3253f76f9f2cbabbd6526140947f42c4c34e990b2d0e16de7a1fbde4
Date: Mon, 23 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734963353
