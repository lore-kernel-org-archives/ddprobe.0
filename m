Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6883A75B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776695254; cv=none; b=QsM3z2y9i1LDhpGddjSACfbVYd1oEhxuyZtEX+P1hLcJVFOVV2UzW5mrrS2tRUPgmov0E5dTObV1ffg1VL8aOb4WGNWf0reAf8p5P/cvF/sZEvC9yfCAzmx8/Ngwe4z2nCEhMlKKGiyFSgGlriJaZFVKB5lO+6rwthdVo2Q4Amc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776695254; c=relaxed/simple;
	bh=Q0kzS50mdLkVhCbiLlSN9CdGLlbAS+klTQEUCGpFCcc=;
	h=To:Subject:From:Message-Id:Date; b=WSBliXAy/8t6URKpAFLZa+XpvXj9yx2YRDUuFWdhPI5WHStLf6NqWWm58ia5nungqDJbfYhRI3ca/sH8/jGWojUkBC1NP6bTnCiZj0Jso8XqiHiLsqeCuTWApGne5e7t8MDV3On+xuxPN0cnbPOEjp0VFq7B8ddJh+iFmTzN+ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cw1odrpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw1odrpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD09DC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776695253;
	bh=Q0kzS50mdLkVhCbiLlSN9CdGLlbAS+klTQEUCGpFCcc=;
	h=To:Subject:From:Date:From;
	b=Cw1odrpApNkWv/1bZtKeZkINct872durgFglbVDzACHrF+qQSRlNihauoM9jYoO+6
	 vzDAf//FsYYRGq0gimmyudkEd1jJSBicsyQHIlb/UWfIpFcf2Z8zXRKvmRNeq4VLAx
	 PoZwv9ZM76qdK5xCRWSg6sImei5ln+lFZxAOpHHaVUvZm58Wd0NybtP+RW888LWd5u
	 q/PZJYZ224Ku+2LRLYB7DraHs2m9hDiG016Q3j5ewquSt7GAZ9NFvZjfWPgxVAfyTo
	 uY2MCB7o89c8cVITtIloDH25PGbl8Bsa99zDo2Lj4zWV10wHC7FSZxWYXAhEhxVqn+
	 TzB2OjtH+Gghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA649F588DF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669525369.8556.15023748381144033987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3b75e3de351f9ab431783c7fbca69a14d7cdfa4d52870734f005723f1e24ea
Date: Mon, 20 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776695253
