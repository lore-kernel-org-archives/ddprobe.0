Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F2A36DA0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773586493; cv=none; b=qIliBYO22ekgyxq23JVv3wN1+s4lONXPcuekXr0+koWixfci0yEjI/CpHisHYm3cH1cNYtRMRpz0VxEn7BXtQwuVWpgv/psjcllugb3heBE4F1TfwE9QAbr+V79a9+5GZQe/uPjHqhGJlH0vXUY9NHYrDq16mcP7nGuTyCwe5d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773586493; c=relaxed/simple;
	bh=R71sRpfAUDTjPC3cOU4SpjgMKbVDgrk4qMyiZ9GKmOQ=;
	h=To:Subject:From:Message-Id:Date; b=BB7NCmJ1JtJRGcJf2VxDGIpzkacdJkugqMr0QIV6bdD4WHs14FXk8nuRmvCu5GkNg5DiVRsGbK+IowtF/cyGG8SXFBNnwmNb2MUgMEMbaxbxsB3eJAjTkaV+vnUwYCQCd3+LKIIT8+oXd+ZQ7Aow6BMA41X5RhFpzBOAu+REOvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPwv+UD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPwv+UD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99B4DC19425
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773586493;
	bh=R71sRpfAUDTjPC3cOU4SpjgMKbVDgrk4qMyiZ9GKmOQ=;
	h=To:Subject:From:Date:From;
	b=uPwv+UD8beXTQwEyCEXZ2dBdZ+F3UHtK/Aponf8OkkjtJ/5f2XWHnOKJvMutlikHV
	 H+gAIMppLsDHFNldzd7S7IHLsiHf7XGLVyy2Wkio2w6Ewrr9Ctn8pn6LXcD9X2Fmna
	 Bhd/livGPsO/ExZuGhRJWawK2oF0ADYQgixumpd3YA/youmpd1mUR7R3YaQaGuLGA+
	 xylGR45QTaCnZ46vd/SduUOoN/PtevpoL7S+TqA5i8zQniCTLtEoUffzL9uEtJDOh1
	 ZCvT+PO12n0VwyqHFU80e4d1reYcRgANAbv4t/hrE2r2qWCuVz5fbIL60/QPBBWhac
	 nLVNVvGJ9C7pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E767F3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358649357.644.1768510862510001847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891d95f6ffb4ecd09c04f3ca18e13a2ffb71a85018e30cd2cad049ff6412e81c
Date: Sun, 15 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773586493
