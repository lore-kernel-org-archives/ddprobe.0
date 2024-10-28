Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31D8155C97
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730105754; cv=none; b=jds05wg/dzvIDl3+miU54kbLiXMx1xdCX39a6aYaPYA9aRM6nRkAU+0ryWZllrCNjMn7z1RVomYBaHCShvSFlBVrnueT9DmsNIOtENRDJkV/6R46A96x9MZvQHEC9qHY8Yp3kCk3iosBfEdomLux/OkuBZ+Y9zEq/Wb0Orf+dVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730105754; c=relaxed/simple;
	bh=j7FAY8A5LNeHhRviexZIduI3lX+ZqILtdMSOolp738o=;
	h=To:Subject:From:Message-Id:Date; b=iXlfoi3nr+ZDN616CSCYTaen05tGCIWx2sI5c7HFmYhvmb01LHuJ0TfVQL8IQjOM1az2BcldIoJTZUAKlTWnnHmE6s2KqfZH3Nzx+uGEckVFHNN+8z/6r6lcYHqb5SZTDeYOK28CLNcU2lDxxNZzW6fL6yTdWZTJDe3kTjwCJik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mX5ZbiUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mX5ZbiUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9792C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730105753;
	bh=j7FAY8A5LNeHhRviexZIduI3lX+ZqILtdMSOolp738o=;
	h=To:Subject:From:Date:From;
	b=mX5ZbiUrRsB9K/v9YkBKhBw7Zl7Kk0QeUS9OnMq54K2uTZKMGLGHBnSW1aoHIpr8N
	 nuL33wUKdYcQC7FTR/uKE84uJlW3woE/2sEIMAye+dyQe/m023uiMPndGtduUxaWje
	 5CbGb8EBPVF/K//jCk5iQ17iNNI1cny4X4kqtoRnBR7qp3XbZUk68lhDJdhO2F+ku+
	 tlDCI50HDrKDD7ocKBt3t8r3YN6F68pOenUQpmV4/gTpqjX2Fy72BsYLArXs0YXUgz
	 ruCwN9neO4HNg5yFIT+3CIPEz8yaKWc2UIsqc3lH5Wuiw8dfdqgogOZt+QzG8SjLfF
	 u445Gaj7LXL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93616D13588
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173010575359.11616.5541953118052397890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e28f29697176efa6f1d5a0db2251561e9acabc254496cb2e40f78a16b05bb13
Date: Mon, 28 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730105753
