Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6F714B08E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728143154; cv=none; b=hQAPenVQNaBhiZ1xqtDeDTrXBtyTNSHlv7UGhOuNN4BBODi4//sRY3LpQ7uTjlqv9gMdGxt6544nL1RtCqmN28kL8qUp+FSOoiNqE7qkiK/Le+DybzxievqSo5VBHCseuhFukInAyEeDHCKRhP7ChH94u3vO3MVFPqRfh4CdOuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728143154; c=relaxed/simple;
	bh=bCLuCJyB3cFk9Km3HcijHu29dh4u1WrdnLEChaJF5BI=;
	h=To:Subject:From:Message-Id:Date; b=trkQ1+qp7xYUKBwoq+wzETpl3EjzLNDaoUGAa9z9PBW2qEhFfKurpFMxUWH/rct5kQd7wuSTerciLVa8c9DFcqB/qDRXJlhKaTYW2y2UA2vUe8bCJocKVG+kbj1bg2jCsd+QXjiHQFRUwmi2bckPBBQFCeqWAcdadUxUqG1vThQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjT8U3bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjT8U3bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02FCC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728143153;
	bh=bCLuCJyB3cFk9Km3HcijHu29dh4u1WrdnLEChaJF5BI=;
	h=To:Subject:From:Date:From;
	b=ZjT8U3bmD1PI9dbWuupV2xQZIm7xmBUxfpmmOUaFYPq8cYCZxW5qXjQAf5eY42gVe
	 cTHifOAK5tXMKeqiLs6SYyWOz+Fl6NQZlFc2oj8uEqsyl7I6ho9mIiS3C+7zjcihXG
	 RiRsH+eRx6/fu5fd7VWvsuhig9E7WPZQlEMz18187BLygRqYlaGxaJKqjPg03Y12ja
	 zhLAfvR/sMTvpaneBIKpj7+ddiXlR8U7lXvi7Ajiu2MkJNbYfKmQRTIt4jKcHxF/NU
	 hE+s4xYMVEsNoua7ntgF5m2fQq4tmANu5EPt1zA2xammW6rhLlHOS/oM7NKtOvs4mC
	 52B6XJP33Mp0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAE8CF34C4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814315362.10408.11539846026075044403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613c9108814a0d1d59d289d879ca2075d50a14a69299b9421e2122e9933eaa0e
Date: Sat, 05 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728143153
