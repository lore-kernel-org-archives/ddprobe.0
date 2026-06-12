Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34969367290
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781270794; cv=none; b=jkkVHx19YAiinBnr5cK+M2Xgfo0x2XqQjy34epNuBT3EAl0eaw2+YvLDCREp2hQbNb4UQUBy4iBtCyp0PGDljsNWarpOkI15TDi9s66i9+4E7CX8mCIr8NMlWEm1Bx+Il3vkxiJvGy9Cj7iSJItsuZyVzwuLvvf9P3MFK6VP694=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781270794; c=relaxed/simple;
	bh=qRBB2tvVsdPB0v/0J6UE7rpSftloV8eEA0Bzn6UuPuQ=;
	h=To:Subject:From:Message-Id:Date; b=MtzbhAnUjX2qDXvuAmMK2lq10Us7ckYcJRMiaz6hnwaVlW/pszjqNBd6NEphCQD7ov6hxq2jwTLYiTKJMUR2Wj9rE9mJBqjs3vozkLTeYksV05ILrb2uPkGhfct0SctH86Tpe1HeMo3WO09XZsdlcJe8A0+yznUL6CeItjBD8/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYek2Zmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYek2Zmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46B5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781270793;
	bh=qRBB2tvVsdPB0v/0J6UE7rpSftloV8eEA0Bzn6UuPuQ=;
	h=To:Subject:From:Date:From;
	b=kYek2ZmmcnXIaUgMq1/shEmQxBRqeGxZVozsxTzsirkCRDW9dxlN2UYCykCkq0hrI
	 1PY6z6IwajA6mGs6rPPZqwAasIkS68RfEt/0YTOAAU977iFnlccXR8eIxD0HXN50Zp
	 Sq/x/RbVSVMAIUV9qzyvU6wrYaycUvZ7fcXV0DOP5q2YxXEkJoNduUTQ8GMVl1YeIV
	 VxtM+wFbuVEIXY7nD8BeF5aTiXSZlkT3kkJxKi+x4RwQpjbcHnC6k+y+hRh3xkLQGZ
	 FMvx7j4iC9LFJIUz35oPYvO5hChkbe4fyWGGAbEMhKoPkZa2Bbdbl9B2vg0OWAAkal
	 3LQzdatJFFIBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B86CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127079368.27619.14488163573935783618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5ed4ac32de3ab7ef1678f7453471445a784470ff5bf4eea51ca49b08491903
Date: Fri, 12 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781270793
