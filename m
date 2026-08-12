Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A7237E5E3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786563634; cv=none; b=XwfliC+AEKTozYpuQMK6KSrZFf/o+YxXBkLmmzotiuke4slj523kd5Q28XWu/QqqcN89S0lQ7rhgigtS8FjQqbm3XxBDl2+ezdcHIU+wfjZ8Ry+2MqckZIlP3RoSPodUWFPGI57t5r+cKncXQdq9AUfZp6H0wseSwAe/udM9o2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786563634; c=relaxed/simple;
	bh=8pYQA/pOnXuPEwTDT/Sonkby01PxpIJ6M1sBgLb2Z8g=;
	h=To:Subject:From:Message-Id:Date; b=O+WWqKmVuqdMIiIPqhY0oGpYtCEYci/E9dkTg+SMGEwdMrOo4OolWtfZX+EAMYKF+34BJoRpzx+lJxozJ66QiCIezHR8QDfMAHWKgLbICRI1CNKPklKFYAJiVMIoYk3pcf8N5/DsrwJ07V4xtbkVsjuJDuxJtixFDXpYhkatkFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVtCtZJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVtCtZJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3F0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786563633;
	bh=8pYQA/pOnXuPEwTDT/Sonkby01PxpIJ6M1sBgLb2Z8g=;
	h=To:Subject:From:Date:From;
	b=OVtCtZJ3nlcX4Ons6niqXFmmVwkTFULoxvZ8dysFjaJZ1k6RbeSDH94loDQocNfi5
	 FuxOMqdM5IJlarWOwhZer/btrhDcGcJwcFjhDyUABJ4MURcSgMpGjblrBdubKTJd9E
	 I9lQPXz2Q4jNIXLNV4+QoShpwRkHsTjMshKJZntJNtgdbObQgC9wOjGkPpmeMuXcDv
	 tN2w4B/XcWo9MmAiM91zvnMS2iQrPXAyOds6JE8NMrQlbAUp5Rnr9/Ub6qLktIkyl7
	 eAlOk2vl6/8B8unvoDs4vU5v0x0i6TIxzX4pQ3+zJTwFAUjmics10/QpAaJSV0QWNQ
	 yN+bZsKxYmvgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90ECC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656363368.1353.4714517314812143605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f15f5e52036737bfdd99597281447037ba657a7bf8f892a3e8145f3bdc8c639
Date: Wed, 12 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786563633
