Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99048F5E
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742216994; cv=none; b=UKnF7LIcGgqlYqfCSgtX3D4ebK3C7lrIaarJ/dLfEUDLEHVJA/YMewocv01mOmc5a5UL+pEITbblIGKy97WWCIIKIGs2SqM9so8iOAkY8c9pgZUnpq9KAJIYgoxHe+6EC3Uez4u61uzBa2yO2mAcYmvIFZTqU6Ifnb/57B8joh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742216994; c=relaxed/simple;
	bh=Y1BIn5dzlu5fGqiLRbxpJFp23inZfZ0Ca9RtKCSGMdQ=;
	h=To:Subject:From:Message-Id:Date; b=lJ4A6d8Rskb1E/nBW31O3mE4sAL6UK286xhcOFdXEn1xDCDSVtkHQBq1HKYFEYBuqeO+7gEEjYaAJrF1s5XUfog5L08RFOllGO2B4LxWXhixhEijXHXaYcxibWiMKW9ZA5nYSIBENwm37bu026dl1C5T8/2EZoD51D6c8L1uJw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5GxNwUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5GxNwUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC01C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742216993;
	bh=Y1BIn5dzlu5fGqiLRbxpJFp23inZfZ0Ca9RtKCSGMdQ=;
	h=To:Subject:From:Date:From;
	b=I5GxNwUqxtCjiMSW8nEH9Heuw0KsNE+Bbpc28w1YymzP0u5bp/bfoLxDF3AEFMM5i
	 xc4fqtUgs15/BfZPfnvIr+qW+fMnefXhZC0RwKfWzXJWI1To4wkNtNQs1gPaId8+lB
	 EWW2keN+Cv4JXl/vYVnOa4LZReOxnOxHbrclepVb2UcXmx+ocms7C2xw2U1Vbg8EQ+
	 3ssPOJvaIZgNuicIhUfir9K0K63gvkGWetJVsAKli9cdaCV1RHepvEodxTV2W+ZwuZ
	 VpHt4TpGtAATWWUPuqo86zn/MsaJkUhYasQt1dllYt41/VVutDGaxAF3jJD78s/yUl
	 CyqI0dB6QUd6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADDFC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174221699362.15264.14887793960207633613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bc538ff05e3aca975afbde5b433d843099944ae3a32771f0c3671104d416a3
Date: Mon, 17 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742216993
