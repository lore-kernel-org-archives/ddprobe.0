Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1949171CC
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709666897; cv=none; b=U7+fui6DGwBMXZgAOQl0sefzVr36vUc2uR2Ua52Cp1s4NcsmikU5bYXcJElVh+V5EwJ2hRgrI+belxo14/m+2YALNoSGRPqYwt64DImFapmsxA/B+a9HasCFBAeZQBFGWHQtXlx2iIaCaJSa/3njQHkvPDc3ojAwjiZfxwm3TbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709666897; c=relaxed/simple;
	bh=kc1OLolliMj93DJ47kLPdDCbirmUutvLVVUSX5K3VJ0=;
	h=To:Subject:From:Message-Id:Date; b=tjgmmlWc6RyS2VOpAN4jDMauiaLgzM8pweYLu8L2Ch/tiyAbUJjCNwuXvVp50TYdVbC2FFdanSzsrvSI3pKH8VryUth79+WOBtTkUL6bIWRcFfBasH95CBg3/2Ocrq2rzz5nHC4mih7sF0C1bVIDfws7amjJbEZ1gdo7zlSefC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwTSkSYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwTSkSYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D137C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709666896;
	bh=kc1OLolliMj93DJ47kLPdDCbirmUutvLVVUSX5K3VJ0=;
	h=To:Subject:From:Date:From;
	b=fwTSkSYbm6uCbQ+10XOG1yxpOeBavuEcsOHEYCmomRivBjJ2TUGXZfDtjcyAhyYlq
	 E3UerYqMn4dmLP9YFV2/qUfsejja5ebJAUVNVHKezpNo2WBlvO6SloVStWNyuZTukn
	 rbwYCglXbjdADwqZf/gw1Kkhr5DWLsH/nwVeHVagj9zIcrIcYAqOMNqvPpGXKQg4Il
	 Ni829a/lk7CHd2rPPfhRuPXNhrQ1SSM7kCaaVV4gIgvQjTUYnfX8i0H5PK9bN26856
	 FJ6JpgT4eUIyDlQgdROAJ+PnrCLYKiufwzJBbYY/OMRqHBvA6770HisLomBAo9G3gE
	 jjt83k2lOhH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D64C54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170966689637.2044.3275370644385007654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294e798e6587d68a3342373aad2510ff1f8a769ce7b07d3222a3f885e0deb5f2
Date: Tue, 05 Mar 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709666896
