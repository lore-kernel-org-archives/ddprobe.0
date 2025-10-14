Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0722375809
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760418594; cv=none; b=M/Xacuo+mNbsJtxx1YYjYmyQXdDkgknXSA7yPpIXehqLi+687u9jogMXx4s5Qx2aQWgz651I+U+7vyX/k8qiTrwCXTNZzTEMQ6UPh7VUA0DqZ0j4BaVq4eTtD02pnep5tniItneiUxDCov4pD7gtzmNso8Ju2iijEDYI6pF2rZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760418594; c=relaxed/simple;
	bh=jSCW8ep3DiyYE7b41sngzh1DwhmJdvP66o4ZZ6oIxIE=;
	h=To:Subject:From:Message-Id:Date; b=hq8+dVY5YTS3QjWXxfeoAqVG1wyxLapnO2gyTHzOVvkfUQdtKAu0/QdovNvUS+pg9QxxULgKqieX23+jDrPWSeDV4F8YQ7xtkY/ZHsgitip54rIPREpkHxiZ5tYZ/BTMOlJAJyaMsCVC2uRGMXgHkPChHYBhURbG5luUaRrGuys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3L1d/CY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3L1d/CY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A246AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760418593;
	bh=jSCW8ep3DiyYE7b41sngzh1DwhmJdvP66o4ZZ6oIxIE=;
	h=To:Subject:From:Date:From;
	b=E3L1d/CYrO3gPE1mleboRcaahT1kRqUSGoSlJpuYmMz5fHqgmeJ7DdxQTmA2rxjAY
	 tNotGwb6yeBQWwjU9QwILm43Y0W34r+jeDbYQeRQ34u4Tc6ib3JYqLhPABKUd6lLCX
	 CAHD1U7uygFJ9VytQNnga7/VBXdw+b4iJ9wx3stxmNY+tBD1hycy4bLowW8vjR7zxp
	 JW4bnXuMQFInVKjE3Ek3dld6jv7JlNe8hiONaaetmRIGyDJ1Hi+v4KVz3wzmPMXXwu
	 w26oylJzenTpbvskDvcVOAio7wFZ2K/Lm1T1QdcjJY0cr3pOH6VqlmFl/mDWhFyZEL
	 unLhzXcM0EE+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F241CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041859357.17025.18047832522676011850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7072c62a9a654a632f38c5f1b4df9af70f01566ca4aaa53360a764cb71449041
Date: Tue, 14 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760418593
