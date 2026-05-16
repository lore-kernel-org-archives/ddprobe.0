Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5DB2F7EFE
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778917233; cv=none; b=GdbPnWlKxmeSev9pCP8NKNIyipHQ28iUh1XrxKILeWAif9rTlUPc7WzI5Rp9+8nFodB8EiTuspzXG4D59U3bKllYeP6W33xauM8WgZt8BzGnq60tHE2vfN+KNb0+N60nE+MeqvK8wkGzlspIcUNGe2Ql8X6LKvPL/HkYr8EuElw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778917233; c=relaxed/simple;
	bh=lpFHFx04eSDNsA/Di+eK6wHKofGx6Y61Ojz5TlsWHSQ=;
	h=To:Subject:From:Message-Id:Date; b=r9Yf5bf0HLF6Sam232zn8SUT5iVLFp/BdSDk3YJRIPTr7qk7cXtcNnSfzxlDQ81WYFciUlPpsAVtM+muS7/jw/A5iyMxSiZZycLSAi6zbrrTrM4L4LmE63VVBYZ8PhtRpkEo3L2r+p6aDxIFKA6fyMuLEgQz+zd94dHW/OOMeLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxmshB0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxmshB0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE77C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778917233;
	bh=lpFHFx04eSDNsA/Di+eK6wHKofGx6Y61Ojz5TlsWHSQ=;
	h=To:Subject:From:Date:From;
	b=gxmshB0xtx5z0rN9MEX3THuBbiVp47nHnPWnaA3uTceGNgaIbUwl8TPf3ZbgbT8dF
	 mpgNPDQCztrQCQ/FEo/yYOM5hpApWltX1u49BzdoG/0zBd/VxPuN8XgKiSe3EKPeR/
	 2AV2QiR6XDZ/YXOd6gbhaN189WkVZDKRCNgRJ6uNCIIMVtRuXQ6SazckOMtoVHgd3B
	 m/gtHM1ehOeeNA3daCvxlglNltoMm1ap1OnMEav4Q+sZYZe6N12JGKPMo3A9rGImx4
	 xGLYXgPpk3rBnO4OUWodLLkMc8cz05bCl/sRT8FBu847cgv4020WohHBBL8ztPQEvq
	 aE1XPc9K4xjtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE91ECD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891723370.22719.359183589525851043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304de68106b7c89c51c4e53d8f6da4f8e127ec63db7339f45eb567b8dcd0a98f
Date: Sat, 16 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778917233
