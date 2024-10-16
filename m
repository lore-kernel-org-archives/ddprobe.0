Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CF11DA26
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729097754; cv=none; b=o9jFUVT4V557Oum87fueoPe9/LbUVrtAZajiFeK/rwD0OFKluQOFBLOSsMg5DiF+8urVGL3erHj1RbLKPuNXkZR/uEgkmxEYidHzy+3S91ZW+FArtlnZp2cMXhu3cNFNTOpzCwS8bDCBhBJEyIL47ifTJYxVOyk0RoQoJrcB/0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729097754; c=relaxed/simple;
	bh=XuSojsxSq2Nnm2JcsHx3LUxe1HBJ247BdP6IsraE/L0=;
	h=To:Subject:From:Message-Id:Date; b=tL/CHKlrjuZGJ9QONf4Y0DsWJ8AxFoK2fqQKyJu/A1RIKLPhPPsDVclN43/fdkmBs0wXGu26krZHeb42sc2ty38BC5I8fadlEkuBll95va0tA68sbLStuSmpSHv0kc9n31n9GDyOyB9lYPXk38bw15Hw5Cddbh8mKfO4DvdGQmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCo0UD8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCo0UD8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0ECC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729097753;
	bh=XuSojsxSq2Nnm2JcsHx3LUxe1HBJ247BdP6IsraE/L0=;
	h=To:Subject:From:Date:From;
	b=fCo0UD8TFuNBbZ1uUWTb2dJs/lgNQnWZobog8xo2ZM5d3bAL7t91voK9zbJvtFNmB
	 vtfdu2MJXjwgvBe/UI9VPsddSQkfTPN8FDqvhpRQpenUuDRQO9hu9wp8i0lVIT80SH
	 x1I0iXUfFOdTOj9YHMSGAIS0nGITG0YgPFRwOAVzGS2huSKgbyBYxw5ylDu9ccRbJm
	 TT+Nnz2KuNVTPHUYJZE/V1BOdWtMUwPbxJEomjyU43XBJ7VZ4eoH0gupQvqkZvdr9D
	 c6I9upQk0fyvHGsvJ7hW6ZfT2IxfEZm5SZeWlNOXe+8it70/Bhq2/UC+vf5loUer3F
	 sWehN+gJiFsUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96293D2A52F
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172909775359.31855.14218076248354944468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b01f5782b204e6e073dfe1f109799d927671230582a0f38e3ed831ec906a89b
Date: Wed, 16 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729097753
