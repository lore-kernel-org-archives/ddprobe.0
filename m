Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4449C309EFC
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789353034; cv=none; b=caA7mmhdS4tHSu23RmHG27uEPN/4SD8XhnmCZcAPzGiI8ooyrcp/T92juDOmftDCJTD4A/4GSAhdnxLNni0nTjZYhT+vCqdRg7E1zN55obVPpBC0SiJGpTdSl83sHfHJDuIUM18GcU317fiM0OcaXH2+yszFFrDeK0iCHoGn/a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789353034; c=relaxed/simple;
	bh=TU9XQ1BnHw1Lk8HvrKRewyRUN4Oz2rjb5YoJqN8jDVA=;
	h=To:Subject:From:Message-Id:Date; b=rz+GxxYGq+oJQIp3R3QA5oFFsLAwxv4TSKN4ynEcxgZgrxJH4GaoHTih6qDTqHlu4AEKHVAATAfbkEBh1ZUqKY15uwGBAxMP/+zq4vpwveqSZ63jD+IU78n8ptFnWIq+Ro+TQIoVDsEGG7dPvDrHXJY84CmDi8WXw1m1BjQuquE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg0I12iG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg0I12iG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD186C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789353033;
	bh=TU9XQ1BnHw1Lk8HvrKRewyRUN4Oz2rjb5YoJqN8jDVA=;
	h=To:Subject:From:Date:From;
	b=jg0I12iGvP7mRykBMO+cSsBo0byKl96tGFYXOq30j1mFYA4ARTXWyYEMxdJ2hL6H1
	 XGOl6HHRaAnqUrxxPRepUX0nxXR6x78jQEr/ldVJ0+79DnhndUVO+LWc7gpf+KCEzB
	 v/9ZwqBhkiWy/qQ+mwACLzDsEF9NYNvvG9BM1cmiqBGXy+97y0Y3JOy8wTCB2kkzdQ
	 ySFFqaNNrfa2vV0LhGVS+j6VGRNu7kRhtD6ZnouMzA+5AjGQA7WwvPjQ0sj380h1pw
	 t9lE9XIfi21ax9cT33Sm3qR/SnSe21mWXQ/hjsIRdd+NhRfQ6wEPEEmsgek4f1DLfe
	 vx957BFESwarA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9CC88E5C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935303368.32549.10925170965550670787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303443615ffd63fe4618a2ecdbe0e516988dda3237b16949ea9854828c68041d
Date: Mon, 14 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789353033
