Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE9A16132F
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743765594; cv=none; b=ltthJF0/+kLPZBaC1S93nV11/cqKxw+aezlAnNknXq4pmI45kBCM6DkYsPYb96FQCeCSsaSg5rL9y5XHazPxIGzPS2M4c6C9spZRLsxW/AdpAxm/ErxSeI96kFuiiXlqYOHultfok8GTcDCZuhUj48u9iJeGUBxzAozUt9+ClV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743765594; c=relaxed/simple;
	bh=LkgOKnkeFw3LPvEz4ipIzHCuZYKAJdWB8jvc0jpzslA=;
	h=To:Subject:From:Message-Id:Date; b=qDD2lk5+hCOj06EuyYKRuhFjJHudNTG88lKIbYIVk0lCV1CfE8vOeX4NJE4sF/Nc2I02gDBc15W0523MTYoFi0PfBu4zlOTDVl8SLIzv7kuKmXr8jIvNg7A8Km4llXahX80nxxAXIAsLDDsPPx5+VRcjaP4UiWEPX7ONAfe7Ge0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKeXx4tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKeXx4tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF535C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743765593;
	bh=LkgOKnkeFw3LPvEz4ipIzHCuZYKAJdWB8jvc0jpzslA=;
	h=To:Subject:From:Date:From;
	b=XKeXx4trOas0lwT+h3q4SRh/71kcaC0ApKZaPeOUed+f4bawQbm6S9Fvo/UIXWu6E
	 05SQh1ttgGuLC1w0999w6sjBIqtn15tUawyR6SJyFLQCiPMXwgGQiK0rqWqYyGiNuT
	 cKnSX5Hw6qGPtbDhq/lBYK0jyVhOv8RmdMTzo8W7sQdM9gbwqvIzfmC1FKfvuLTCK5
	 dY7KcJfk1hoevSAwAWQmkV+NBS+sJw/syfjJIh06UkSmU+nbfJr7G40ON4anWzbHQh
	 bQMNACe0+j46qORi0+5PY99TbQWnPcfbOMX3FbUKaDEv2I61ek8lC9yG2quP0Tlgco
	 I78aBOnKiYI/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94427C3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376559359.17853.14167956575032260790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d0dad596e9108708c2bb80041cbcc542853f50889f3267ed6ede09adee3521
Date: Fri, 04 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743765593
