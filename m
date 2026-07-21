Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE6B156661
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784594914; cv=none; b=VzYJrNcy9IOE+F9VgG+jeGt9Q3XOAmVpgtZ1/zZwCMs+ZaZjRujHAvLySVaETFO+QGLLEF8LpaFYdrPXd2mftEtQpkrkWsmDgqRg94J/iAZ0XTXItvsovSvbK8HADo8MSEti817a0l7dVVMVp2Z9H6cqqOq/NUngmBc2VwpfEWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784594914; c=relaxed/simple;
	bh=opOP/hDwB40LlUBpjfx0PMYVhdDVMuf9tub1X0lcubs=;
	h=To:Subject:From:Message-Id:Date; b=PjtZV8v4wX5svT7SCQSxGJX4LI4s8W+07HnIvAAArBo2uCzl5GZwOhN7mHQRanuNJp9nI1rl2CwxrWHJRaYCiHC0X4YojZzgPVrPC5prrS11Jqx0xK/9ZUkXQDC2CtOJBhpo1XdbDF5UNTjWhrw7Tk0AavIQPdbBgZ2AJI5Y47g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBQ4kmvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBQ4kmvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA8FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784594913;
	bh=opOP/hDwB40LlUBpjfx0PMYVhdDVMuf9tub1X0lcubs=;
	h=To:Subject:From:Date:From;
	b=PBQ4kmvJD7nepyl8diQD7uDFXZVlgoiZI01g+LdCstxBa6fL5+86BVFibwq+OrMKO
	 VrKw5cChw+eGVNzonjSwSH8GQl9aOR5DC8EYC4JxGfMN3/WEuVbAg0mGwi3q+NWWug
	 Q0sv6IdHsg/dIvpXPiL7tZ7MvRTPUm0HZakXdSDuT2bOogpEQaDJGCNSH+84wB6NLP
	 S+wg1lKUbUwMFhZN2lBySnmiMH80jSLctrJAeypK4STBujEu7AxoccKVp/6wDIHBSf
	 wFyO9rgfrOZ5eXe/1hSLYOpEZfI26mWMMLQzoL8rEqBOdO1BljCKkl1CPHuARpFkRP
	 N8IO3wAwB+z5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA925C44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459491369.1553.97677752100595840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c0036afb92120a314462f552b159947eca7df3635385311efe86524c83f92d
Date: Tue, 21 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784594913
