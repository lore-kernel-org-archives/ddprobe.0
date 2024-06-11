Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CD218EAB
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718097503; cv=none; b=fIjpO0xN/E8jDrjR1mBR+EYsIiM9EQa11uGaB1h/TsN39++r/g3olyB5XDf6F2Yu0+dxyStH4LVOrY5Uycp3k3b5KUWojn1r6UZqtngUFZQysdMFaExo2dgbLs0aw0uk6b+7q+Um9rg6ooaUg/kvCTBxDy3GBjsPYpb8IkV593U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718097503; c=relaxed/simple;
	bh=KuWpRBOq+NVMlaos7AFLXn0jMdVKnzKDpeLIFQZdd6A=;
	h=To:Subject:From:Message-Id:Date; b=aa12NFp9X2jr2Xx+ookt4guBPNWD2Mme74t4g+sUsVQ27jtpg7ba05yNnktynMVeI4/Po187SHsy9POqOCHtBthzdtb3O/+2JFqIkVP6eoXLcfWmqdiucmeYMIT/NDhFUVPDfBnPjBrEi/a1whrPz+T1y16rrnRUABp5GrgGjWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cU9NrOEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cU9NrOEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BEAC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718097502;
	bh=KuWpRBOq+NVMlaos7AFLXn0jMdVKnzKDpeLIFQZdd6A=;
	h=To:Subject:From:Date:From;
	b=cU9NrOEaybm9wdwZf4kYY6e0TCCnZXdzkU/JXNHSq1E0vsSDWPyFOfl8wf5OiVtN8
	 FXvAsu+ViPxR8q3Ndd4bmpmxNLMf6LMj1BroAc/Z4cnjMGgIviCXFzDussSxHAJWDt
	 5EeFjkZpUDXLRJEqi6CNjEIeVpMTjl174kdmaDWpH1DYO6kcmi2KZL21zcD52JZ2Ql
	 BhRbDIuxe59gW37hcmZFZhoSJKc9kefW5htoFrGe4y1BrwNQy6z16CAtGWL7L2+Pxt
	 ElRV1i/1U5jC30dcE8IIYGQSdMZA3mrNeXZIJCy0MJaPCc3AIc7faRU2/t6/mb08sh
	 +tlw7B8oTFynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7A9C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809750275.23139.14612706414509873731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef0b04f1c5f73fb8cf27797c39d7d4bbbeb7687d884d7cfefe09f8d38a3db00
Date: Tue, 11 Jun 2024 09:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718097502
