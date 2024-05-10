Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD08170842
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715351543; cv=none; b=b3zJh8aZ7jhG1nSC0rcuZ/NGAsF1FABH8Y2ItdHiIV+swLP6RH5pY55btCvmqaBt5UbL+i5C2V1jFUwks8Hk38nPQGcvvgucBMkCddFVfdHkas/NCkWhHyDjrUnN+ietfotUHxlCMYwq4P8JEcWp2R9L98XEe6NvEuzMmLX07kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715351543; c=relaxed/simple;
	bh=bsxhb2ePnKhUYy2cr1x+2bBdcLXbtvzxKY5bvt/5qCM=;
	h=To:Subject:From:Message-Id:Date; b=O1itQh5Gcvid59Ws+GPKRA3pT6l6A1ck3xFG57aFDJjI6/qXV/vWGRMVZWZVj8S9kTwB0aByEOpcrzt7lupevDAZJ7oe5DdT1LSBI4Oy1n3SPZEsmJdafSJG6URmGqOHsxm8FNRlTtGlqEmNrQlH5250w7xOPEpPH58VBxbhax4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smGwCUpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smGwCUpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5583C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715351542;
	bh=bsxhb2ePnKhUYy2cr1x+2bBdcLXbtvzxKY5bvt/5qCM=;
	h=To:Subject:From:Date:From;
	b=smGwCUpvVe/CeTWGTQbnOivcW7ywDiJthFcOQ9nROuC6bt1p03V9S2sZmJwoiIzYj
	 m5ueYBeNyM6KHEjwDHjufp7E+XxONbObgnPSHPg6QSbLZyvUlFpwwG3WuUE4/8oNxL
	 ugtJgGWuWiKWINtnRd3gbSqruG1IVY3+3hUQCgFRWO3JJSPFM+hr8oaMMiizsOqbiw
	 DfFmaIcOsI6uhdQHyTNiTsy7qnF3HALETy5vULP66jXt6qS5uN/BH4eGS5TNHet2DO
	 naqR+zLSbfF3UBpSrjsY8+oW27y+NZGt8jX0zIvLQ9vyheA99o3bfRaSPW0fjCXzOD
	 770k8Et+tKSTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0F07C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535154278.23412.100674005143238818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30f0ea66b64d69e07a7cdb3285037dd0b5b2ffb4aedd4d00d769e2b7fe82212
Date: Fri, 10 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715351542
