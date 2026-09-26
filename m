Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485851632E7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790391034; cv=none; b=IQWZZEotXyPhjJsvc4sO/s33Dmh5VZVGJHkD5558stJ0bizC84nbSRviYZbhgOEa8NI5+Gh2SvVcIdEBiCUqy4xoQiOYQQOBHeSB2I5ca80b+aKARXKjb9GG8Na7KuDetbcR9N4OPcZztqYI9RQr/DBSDPPFLxBO+t6b5beT+Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790391034; c=relaxed/simple;
	bh=EPlqiGA64a532XB4zbt2vQ0i4lDZpoAP6f4KE2R3KQg=;
	h=To:Subject:From:Message-Id:Date; b=XJU2UtwWuoWaAflC7myPwjhXIY/gLzOcg1cMznOZ9b4lazXJQw9JTEJCzrksPosBD+C57CubeHcKjHBH9ewkpNYyfM0nOZxtVmrJAYks4hYsodK8BZVrJoMlsWGVePLZpKWt/tHFwbnRYJnqKBZGIs5gY5Kb88JyS621G0lxzlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngKQcwva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngKQcwva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA796C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790391033;
	bh=EPlqiGA64a532XB4zbt2vQ0i4lDZpoAP6f4KE2R3KQg=;
	h=To:Subject:From:Date:From;
	b=ngKQcwvarAXkjpNu8ZF2w7Oft7IZP7Ttkz54jZhmB/2Qd4EJ8uk+GAI29umgTFIy7
	 sLAR3sWkgrVaTOtbzBRrX0AAK7qmhNsVSVEPoK0GCS8hrIJfa/SzaKE2fHpl9xCNAG
	 itimQYAvgThIVdaSnFeA/LnFVK5aIC9gPUJjnZnHqgQ690dCq4TRDTHukuRDjFCv9L
	 2Q48j3hYRD50FNuWaXWC7EBu/pwa1/f7cojdsv23V6pqX3002xgdBUxk8/qKii72ol
	 2TgAV6DGag8FKeCbM/g+ceUMVg0tXU6anDJONXbc0tKb6UEXw9nKAPFTrgUPS8lF7d
	 razCTbL0KinUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFBAC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039103369.21882.5260049042681890231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3612fec58d7e23b1d245f1218890f4feb260cef645b4f23cf33ea86b2980a11e
Date: Sat, 26 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790391033
