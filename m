Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D239E4315E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735796153; cv=none; b=aMrv4xCOgyZBHvuAwohkXuhqwA4Ul9zxe38M9UB3KHISJv3Z2oMcmrbj8BtOXd542U3BYocVXISd95dTgAODbDnccoEQ8hwpWAZtk5B0S0QVdohCc6uUc/zEv5dUECOo6feRgthVh/RdIG1IHZrtUp1i4nK8JbZtvpPWlkGzh+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735796153; c=relaxed/simple;
	bh=xIZs0Z76cp2TrjEvaAUg+ugFmmqIkBU7GyiA3fqZ+h0=;
	h=To:Subject:From:Message-Id:Date; b=mYCVtlhqiNGJVviD72JbWQJ043QZ2Yx26nN4Avrqx8xEf7W28OAB7DDX3OM2BdxDEtQgcAW3bhYwTgEahlCJqN4PVKJBVEYO/VW8GXvkpTdne7Q+3sro22/HLxPtTfh5Ft86b+UbaLhwLWGHFv3ycr8tPLJtZ1znld2+qcW/y0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKACwlzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKACwlzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3AEC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735796153;
	bh=xIZs0Z76cp2TrjEvaAUg+ugFmmqIkBU7GyiA3fqZ+h0=;
	h=To:Subject:From:Date:From;
	b=XKACwlzio8r+SOVHgETLfvkFAY+WtTwb1Sebm8Sef77BJWZaAqn2AwFYixX3YWt0u
	 aMb6x/XW+FDQ65CldDtloj9uOOcn4suIJ8dLTwD1sXUpAmbEvPCHjnjNCLQBKy6tnv
	 aatUrmIPKoCvN59OeBYsF+T2aSLeASX9Hd1GZuEM0NH29HlKorUSy5k4w1KbsOKI2P
	 JD0ZLKdhZk5s6522cGdygNFSW3GPmBpUduaTyMbwFRgrHtUarquVMdwrOyxlbtpgV9
	 EdoO6ku3w6rBpNhoKXfY5GK2Iww91G0syy4ppF49TFTGmdDzvCTI2+MXHIFqa6qYb3
	 h9F+lzgNcQyuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CA2E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579615360.6399.14506199937940452544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b28678422a90f9b6594778746d880db7e415ccc812b2caa97adad2e871eef9
Date: Thu, 02 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735796153
