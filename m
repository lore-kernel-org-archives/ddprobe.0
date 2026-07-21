Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503423AB47A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784644714; cv=none; b=BE3qNktxSp2yu183x3X+hgiAukA/G5QPI/LJF4uCYq1Y9y93Jap/XHKLWuJuxyWq+zvut0/JciBd77T5rSfqm2nTUMfd9fW1r/AKA4w3p7w62Af1Bf9HN1njCNXMO6g/g4kJvoXmimJtAOb+F5S+r0SUfGEfCMS6bq35YvGguOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784644714; c=relaxed/simple;
	bh=Rqknb5XlFASmY79sl4ETYyHVcfUpmbomg/ljL6L12vw=;
	h=To:Subject:From:Message-Id:Date; b=On6EZUgwkaneFZdoaw6nccGq3jeVPzdUScRCyfiKRt7l8inI7tv/aWBJhyB5bhGzQ1HFBBamOtqs+XQ6MfG/m5lz62aKl22gsRxLi7mkPhrqfUjKmENhxrV39kUlrddtsbNk7I6qjC8sJ5pP+WMjQoGcDgWUjhMbTDZALfdtzSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei41EPNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei41EPNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABCEC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784644713;
	bh=Rqknb5XlFASmY79sl4ETYyHVcfUpmbomg/ljL6L12vw=;
	h=To:Subject:From:Date:From;
	b=Ei41EPNhH3rZBi6RY4Olu0AlMdX57nsg4ejq6xklpBdGCfqIRPWVvxozg8fw2uDKF
	 9MpRgVF/379mUWpWnsveQR9nU5z+DCuvLyNUEQVV9tIdJm5dehezI9OElbUK5DKvY9
	 vtMYi2533VDE7PeCp6wqjebNyFXlaF0/PpqBt/UPKlR4iS9uaIxU7vw5o30PHt99sq
	 8ETSloVxShbJb89ZF3DCHq7m4xaMYqldD5x0BtwGsOLAO9V9GfhULHrmY5RMrU1jaV
	 jrN62EPi/eRcogiaIUCe26H3DCX8HYiGo+q6bXHVeywUzTi0oCpfXNQ0FcDfepFZAM
	 UwwBV1rI+Kz1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B098DC44532
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464471371.11873.13204179105275693159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7863b08461c06eaad82230bd12b8a6a8074640339b36426c96c124270c68e7
Date: Tue, 21 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784644713
