Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E7B10961
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712725097; cv=none; b=tcyiVdoA2JjPlzNr5Cv0VBM/uDOiJv7mNamgGjmonoQ7zlR1nN60fI7HInMPH/26KrYAf4H0XtE7ZdqPHV1DbZsfANCSlwcCWHAndIvkHxcJYIdAodRRsI/FkHFQm/LLAmS8JeWxzBqjQpigT1z0rDFQbUnR8unnaUj0o03fBKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712725097; c=relaxed/simple;
	bh=AVZD2S97+/FqgxR/rPD2nnhCc4RdmKQFbNoabnBeXXk=;
	h=To:Subject:From:Message-Id:Date; b=rGkey1bm560I76LhujeqHWN15FCCA68LqptxPdJMm7yxmCH+RDjEemq3cWXWeTA36ZR5XP5UlGcWN44a1Wzjdunn6lr80SUbZKeWIjTJSYEcl/HiWrI9L59HP92E3C+Uc6YIZD0grmJZM5iJ/PYJGK6VcJqpB6bpLJvG7RBxf6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhgFXJQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhgFXJQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B6CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712725096;
	bh=AVZD2S97+/FqgxR/rPD2nnhCc4RdmKQFbNoabnBeXXk=;
	h=To:Subject:From:Date:From;
	b=dhgFXJQbYs+7abD6MNq2dd4Jon2uBLY7re4w9jUs3VOEypdVF6j4JDUdl4TIEQlAA
	 kiJmOVzJgT0EBv7c+X/hkvJ1AljEef73Wbce7GmhDcDGH/orT12ISnvt+cJLxvG0hA
	 xSGDOfJ3F4zj7L9GcaNqSPLlp4wiIejD5LKoVzujynezlqg5sHuO9a0f8rUn6BvuzW
	 lFjmfSxmXZbLHnMmtoS0W5pn+ibmgrFLXENnLPI2ewglJFfrmwjLxerDzJT5zqP2UE
	 jSsWTBzSukFAK0XPaEs54xIdlaSuSpwuFIpzyfP/oNN06ZXdetWV7HrcL3Ua4+7TWK
	 tfnAYI5BEQd4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F99DCD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272509644.10649.4605768349307692722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575674cc43b793a06be7cbb418ffe177e3b79bc90d91430304cc5e5a03bcb5e0
Date: Wed, 10 Apr 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712725096
