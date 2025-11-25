Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EBACA4E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764064974; cv=none; b=NcPOIjH1Z9TCJz6DK8MBhDLOcvllKlqYVz56HXZJndb8tnrImp8GYJXOoPqeW3JXIJDf8iDHIlcPalmTDJe2k4QgMr6h7pJt1YAO5rgEbWVNdTD2Kn01Fbiin1lF4qK8IF10+bSQ8zReJlRWyj0PxeELWukwmI3zliIC86ojCM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764064974; c=relaxed/simple;
	bh=KOfA3MLZp7hlk9YgHGpx6VSG02/9BcUTgeOYINeoQmE=;
	h=To:Subject:From:Message-Id:Date; b=VwzWMSP+J+9CfeK68Dxxh9qin6cCQAyyq/6m08clBQgJKa3DV5+ISvlNgDFm3r0fcebicK37kBBPlIUSmm4pGJy/u3rBGXQdOnIE9BtCJOdZ6VGafhx2vPnlorCid12yc7zTzr6j38MFRKvdBpnPC4uSyu20V38omhMd8a5qxDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUONu+MC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUONu+MC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2723C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764064973;
	bh=KOfA3MLZp7hlk9YgHGpx6VSG02/9BcUTgeOYINeoQmE=;
	h=To:Subject:From:Date:From;
	b=AUONu+MCNaZ3Gc5RV4f4wRFf7a3uPOhFPTFfpltsSH+XBGpVkzYNtSg+EhTBASvlt
	 bwIZDaUd5z9E+9evdQb8hIcd4659THnODAJ91etDvgeVFG24w5sLZYgs7eLougymkk
	 GpgMhc1AXJ7Zp49J1IwiyTGm0MiXZvmZaGVt9v8UgbOepTPUpaRK9kvhNAIIdNCMPv
	 AVOkCDpMqsy0lWbLeH9Ey7chfK3eCvKenTpqJZeWd2RIlu4VL3HqaBQMuSRkhdbide
	 jkmDvXfJwOtnCWm3KYQvW8/+6nI4h3lk1wiVqAitYS1vFifAlP6WmafR6ZoeO+96JY
	 sdTBTsLe1uSiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEF0CFD37B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406497364.9212.7536176219687167522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae7435cf9df8616fa21490e731dfbfcaa10cdd18f67ecb8ff4cd380ab401784
Date: Tue, 25 Nov 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764064973
