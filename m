Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD7B2DF717
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782962314; cv=none; b=aXKENH64nLwVRKlM8gERGYUbfUjscTND2ZwovNP6fsMSC6j9k70ARXMxAUJdez4HXfwEMRYzyM4c5Wj90d0/W0SDXwXab6/VxlLmay6lUF1ccjN6XZgXmGqtclspktb4yF/03ZE1KoCmZeFWsoYSInEsrj7mVlx7qReb6NHcl+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782962314; c=relaxed/simple;
	bh=/58WWnNWQbDLOut+il3syYJ4+sKFFrwKwjGLycLU9tI=;
	h=To:Subject:From:Message-Id:Date; b=NGDjDTW27ReFke9udV2SKmkRCvpWQ9dOtYTlyd1o+eRAAuPB3uoVkeEdBfQfUBnYE/mfKtfzKltfnMlyRXW/7uGh7iUjE/gWZd5dgPrOu5K3b8Ha5yWeyyUFqQVth+YmkWzHYT6Jj9an010U6Hua6IZsN335BouLynyukaSh0MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PosE6QhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PosE6QhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7A6C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782962313;
	bh=/58WWnNWQbDLOut+il3syYJ4+sKFFrwKwjGLycLU9tI=;
	h=To:Subject:From:Date:From;
	b=PosE6QhQ8md00Gb6T+SuceBgInz72QpWimx/KNSRANJRvd/xFRzAPM4hLhoA03vR6
	 KYvQVvhck+AfzJYwvILZRJfK0+1jpfgtFlCkSGT1iZNd14P8Z2VhkF0mvevLOD8Xg6
	 uZkT7TJvy2mQzGzp85Ig+uhRRmRuGECAQPmdPMorcy248GDFImG2/Ndtx8NPnZyvSB
	 hlnj461s8hN1j4ZUi35wXhHRjCcGABWJVEGApoGmmddZhsVa7yJsTdQmuUH5OJJI3h
	 T6/z8qCpLwbmB76zBqM8BGx06Bg4qbmDYkrZ++qerErDRrub6G1U3X7kQeNHC/chR9
	 V5EO83WBjsZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED9C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296231368.17792.10822540364511439398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a297677740db1630ac5545d15015659c3200b4ab41481d61122a90471f879828
Date: Thu, 02 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782962313
