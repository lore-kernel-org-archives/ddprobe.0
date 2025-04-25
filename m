Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C4D15C0
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745541594; cv=none; b=MKfLcGq44cXE+rsTMDJ4rcsI0Y2w7tIe0igIIM7zdEcrlxyWWpUfjxsiA8WPQ8vvJ/wUC3RWHB2i36GL6TnnFCHKLFy28j7JaFwsEkfZAkXk60KNclazSadAyl1N/u5XU1k6c9HQtSPEe5trkPEn0kYj4srkU6X295fBFRARYgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745541594; c=relaxed/simple;
	bh=LtwVD8zv7KV1+MCgrxmRrXd2y+/8pvX+gAxtveJAeiU=;
	h=To:Subject:From:Message-Id:Date; b=g6M83QwKdQKWIdcngkCUpN+Qlss2Noy9Kab1hYMj9RcSMthrvOD8EejnCTjW+CYW9TlTRrGo6VUzkCcz0FmpUq0NVNi7Lmx5MBVxK5yayEskuLTylYuRrwUckIyuBj8sMD32f4yjxuoG9bEPniDG+riTZ0yixtHn/eSKdpUSva8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3QTB0LE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3QTB0LE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745541593;
	bh=LtwVD8zv7KV1+MCgrxmRrXd2y+/8pvX+gAxtveJAeiU=;
	h=To:Subject:From:Date:From;
	b=J3QTB0LEKKJoSeEkkfOnQPuLR7AJ/9JYOKdLtjuAJPaoXVpGm9A7wzghE0CUyYOxe
	 tN54kmntRGwPir6K8fNTBUOp2iXntSOLMMtDePtRHFk2wX7sjGF7BgInP25Is+EOyy
	 E+pqvcPgK0LuEOVv7T0NaOX6rFNSD+EU8Ha/9apK4B84Ci/Q23jvfClBf9LNxCaquf
	 PsIoNPYrQcj8SqzGvDTZacwenZGjTXYrBAdxxT88TYUnTyL/X0sz6RkM/sHwADW4ns
	 UOx1tFPWVpYa3BX85lhWlix1s9pllWxf0BIuf+Ng7g7kzXoGTZj5mtdAVq+FhVr23x
	 zFdeYqM1B61Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC7C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554159358.12379.7674895802565783836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb526af4f86a8fae00fddf7949ddc0395a97f35add788977557dd9b9686f3b2
Date: Fri, 25 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745541593
