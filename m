Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19B44BC00C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778088455; cv=none; b=FXxYnEPUlKcFA6blRny4y8aUt8SWOAwne+PMRljSMzlfmkeY4CWsgxn5a8VhjwR+PpgwyiKXAnfp//OTkON2lQPI+5CRX1bYHAYoqgrhsAhrynOGKDzwwn3oPOWdwfnzc8vqWefbeJ0dORv2egaID9tbVo6aAMVBg87wQQCajbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778088455; c=relaxed/simple;
	bh=2XwUXTqmKlghxv9/DB5dBFne2b7D2ahXFZeLK5U0Za8=;
	h=To:Subject:From:Message-Id:Date; b=XJwLBNFoCS4k9uFDy4p652fM28CvXrojMtwsK90lbPAjqAHOb5ALoj6mbAxVa/meZXsdz74xvNccBRvphpbMZ8cZlaP+CQh7ApG9gxNIwSfkAA4QYvCQ3eV986MswN4WehwWyNrT7CnZKE/9rWz8jBqu4rn34yshUY/x8IZngTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfJf9Moa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfJf9Moa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFBCC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778088453;
	bh=2XwUXTqmKlghxv9/DB5dBFne2b7D2ahXFZeLK5U0Za8=;
	h=To:Subject:From:Date:From;
	b=rfJf9MoaBminbXm8uhjyvFzXG9EB/9z+u4AzEYvCff4yP++ysS/D+yUmDFTlH1m9e
	 IbiJPpr37T7pGTNe2X55dvkiCpfbAkfT35x8fNOOQ4mRR34tafaglo7ydbEpF9D9Z6
	 cqHrO2J33MWsCzR/HX5pduSUbtSJBN892S0nuEgLftIRM9hsI77GKD3+YhJrtlzms9
	 YmVD7VRU9JxzlI+TRXUug8yJvtbwkRTL3MI17NTZO6QdW9/dNmJMxarQbexlznbag8
	 UyL1cw0NGKYtreTyoAtpWbvAdOMmxaPATUXYTiFHKkG0IcB6bNZt6BfLx4W9K8U0JT
	 GDOKDjyDz4iSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE357CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808845369.29490.6927713227324938162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3180c3562d3e67011fde9ff50e7acf84dcef39b7ab044de5fceb98f0119c7a
Date: Wed, 06 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778088453
