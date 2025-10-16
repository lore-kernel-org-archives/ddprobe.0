Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2600D212566
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760629794; cv=none; b=PvSbPBLJuyZQZM9dqqxf/GkBodusEomNyFCURrP+MIStrEE5STDa9cF/l7LqYJvwpM0MT3FBs+/e61BO/RrKCMZTjtMExnfED+iJ4W050DFuVFkm7S0o8FF4DS9h5OpaiLdHE5PT3nowhw67GZJ/xNrmYFl83q8f11dLbt55aQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760629794; c=relaxed/simple;
	bh=6BUcrqRi2t9KXEYE2pgFxSmFu36a0BPTqqz7/gJJsTw=;
	h=To:Subject:From:Message-Id:Date; b=oPwX0/OpOn6S1FHQ86wwo4Hr4Gnr8pEV6PNrcaWmU6EKo0EXRbskknWvqId9LWVMTs5Ab/kQWA93PPSemn4McZBelfpi+GKJATGSOTqwzpt1PXoiycf+2t+ziw29jX1pNC8Ca3L5qwxvqZGuetO7RnWPrs9jlJLnOVdr+HVjdDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq3C/ZJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq3C/ZJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C6EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760629793;
	bh=6BUcrqRi2t9KXEYE2pgFxSmFu36a0BPTqqz7/gJJsTw=;
	h=To:Subject:From:Date:From;
	b=Oq3C/ZJt074Cwqyd4vh/ymOfFHJzTDUYOrGGGNvBl1osqhhZPnnt1i0E4GBwFNjK5
	 AsFT/lZtVVsfGcrcih0h6U5okphcVhbSwz0qQsFbOgm9DbauptQ9WtnyEcA+UvldyC
	 8/RAbt6subTsSX7YWU3wd5Y7jL3hbDrBP6ORyxbvFCA5Wxx1o9LUvqqUmuVJEwDioZ
	 x35dFcxVMLQSCzPBwDaWv/n5a+gjRUt89XV1DVERFqp2ih8epWhqaUIjnhDD1q2hw5
	 wVthPxdoKt7kf4LYlk7q7ON3W8os/KuXqj9dGQkhP+EQZViKkUXF+VqHZJvoveGIFS
	 fwgWmUIWpC+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B12CCD19A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062979358.17995.14917106703135241108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28d7412c24040a94d6223f438cdf5ff70fd72ac468b5c256e5bc8460d88ccc5
Date: Thu, 16 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760629793
