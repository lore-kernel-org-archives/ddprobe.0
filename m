Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE9329ACC5
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779320434; cv=none; b=uFmhk7CAthyQ5UhKC5C08l9bMK1oykLdAjstFl+sVgJnJzeqmqLGn2Mw7P4lT/3JtEIDRPo+knupSX+dhAPs6HuKfpurrvVyHsYRTkITJnD7q2fjDipT+/3bshTXTWbIYzlNbMqPSULj6NmoRfwj5TTOmdvzvQQXdw6YAN1VdFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779320434; c=relaxed/simple;
	bh=F1KXuQjE1YHQQFNHTwd1y6lUkzVJlP+kWvkdky2DdQY=;
	h=To:Subject:From:Message-Id:Date; b=BQ41WMBzbbORMwG5aUt7VCK3EpHSc9Rzw5zAZhqbG4rnmQFcyx3qkGWCYeR+5/eFQjRXBIWcUT3RPaRLZ0qvF82fEh3JF7y7r4GQHX2fvHi2agRa50FgXrle9UIhuuxpjXSu9HrojDOVvvLtDDHx3jhy3citSXST4SOtRr9S3DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU8JYXud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU8JYXud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75C0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779320433;
	bh=F1KXuQjE1YHQQFNHTwd1y6lUkzVJlP+kWvkdky2DdQY=;
	h=To:Subject:From:Date:From;
	b=bU8JYXudR65e2FxSXb6offmdf7qT3d7ItIAjtPxNWCfLPCLscjvs3l0RxCpnnsMCV
	 TSpZokzItdvm2TYx25DlP6OYlsI80aFhzqLJyOGFCGEIgASUHOulRwwmzM2iscj9RW
	 n5zYGPq4G/iYudDtNAGsLela9shFFfmNZEq1nBOuCMqyjF2RphVJtP9lFPrJNNL/nJ
	 O4xNrqFTdfh/4Y5GO5vpsuQg9gsiXc4A4/I9/W9MVFyqSC0JvV93tdRDafhNa3g/Zw
	 SdDLKJqsopYDSYVWmQxNOJzyTqfsWA3ZtBFHwSwsjfuWQTRfk88c2N6ydgWQJoutAl
	 eDaJoSd3KmgfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB64CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932043369.16324.11655182241712271529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c78bc004878494c12199f6d8e8ff213cd8556c4ce2d7f86664e3be7158b35f
Date: Wed, 20 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779320433
