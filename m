Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0D228643C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775399734; cv=none; b=jBtltZjajsEYt74TIMygGcTa2QMS+nuih+djEj5sbPkx67hgikFPMc606xfpoP0PKtOO+e0eHOQ3RPfxDMo0pN8PJrZtdIjwX4aSVflTt4ESBs+qiZMKxnI/zkzWpr195bZVdp8EOqXwpO0ND8IlBYCKydMabEk9fiVGveZbOqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775399734; c=relaxed/simple;
	bh=DkpdGBBpRZYF9z+GPXNuTAheQruGpqoKMj5EzHSpqnA=;
	h=To:Subject:From:Message-Id:Date; b=hUwb0Ql+YZR9EDcL/gNnSB0m7rDCAb1ek4D72XXuTJuZMXgy6nmP116Zup0/ErCKU/T1JYL9rJ5tm5iZavC7esqhcf7osS68tHNN1LQfJOrEKh8AG5EWdcPiED8QAAnb9aXZLliNJSp49aNnVuEdZmhwQUiGl0CU+MMVfag2twM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pG+gAsJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pG+gAsJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9A0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775399733;
	bh=DkpdGBBpRZYF9z+GPXNuTAheQruGpqoKMj5EzHSpqnA=;
	h=To:Subject:From:Date:From;
	b=pG+gAsJZihKLVrDTb2PBD0Bz1R9bTjl4YoTqxmbfIuPSXoADe7Xqfv2eq7Oj/j8nc
	 zBHTTFkoe0kzNCltlhIs/9+wVEMUFg6vG5hJS+f5IYrOUO10xm7aiyzhSHWA71NsPy
	 eVyyIua88DyW7G7JmZp1UjbpdedaOMf8eXWeL3MiiKtwgwSuO2P9tKWtg2lOHxpyAS
	 J2snX09TutMUipZI05yAEoQ5Cwg/viei4rvWvwtWVWHm5i80/ZiBcASkgjp0tflcHk
	 794V5ehJ7VehGpZxmHi+oLIuEnhONqHJ5UAyoh3nB1eNNq/fYqCbm1Ak+o6iPkqfYK
	 KGZeCSixSKFEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA424E9D801
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539973368.23647.5469943659007547076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860acdf5d4ec4ad39ab2e77502fbd3e27e9b6cd47a6159e208cfd2c7ecd7b1b2
Date: Sun, 05 Apr 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775399733
