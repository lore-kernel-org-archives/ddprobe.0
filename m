Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040B914535A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718925023; cv=none; b=Dt1THL62EXKC/tkS+s3Z98a7Jp8fzZLqmbPd40KOl2X8mAo09M/kGCWgdX5FXYqqsDY3cGqUdODF1UWblDGbU98NzTQHlq/w9lsEVH6LV5mN28FVb2RgMstIad4PD7thMhPusFQn3kOcL2PUVz1JQWP7us9ptBI2mroln3UVJpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718925023; c=relaxed/simple;
	bh=lQPodOxzFh5M9IzCXJa2oMrByECXoe9JNs3KO8EOBZs=;
	h=To:Subject:From:Message-Id:Date; b=fwbHDjc0zsi1022KjN+vCJVlmdLliS8T+oa5Ju0fxpoQw1KJOu5tnrb4MXobx+ruT8snnF+CNU6QLh5reuAWkmshJvvIC71d9PNRAe7aMRdRPMrtOME3alGzmCrBwLOXaDW9dNPQGvjTn/Sy7Al9XHHpnt83tXfweOhOPz5kGrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyOUtz0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyOUtz0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5633C4AF08
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718925022;
	bh=lQPodOxzFh5M9IzCXJa2oMrByECXoe9JNs3KO8EOBZs=;
	h=To:Subject:From:Date:From;
	b=QyOUtz0/yNPYlaEsnocxwM/X/vIpdriuGpldozjVO2HvxfkVySevUzokVDJShQcR8
	 2kb2OS7MUty2Cs7Vs4fPCFXAkx2tGH5/r/wLsF1pbv6oRKiKZg4bqzCQzsltjSCIDh
	 83moD+wCn+jlhul3lmvgkIkTp0Cy6BJbyNvw+G7kt/YQNLeCSsTxKAnDYF0pR7AT5x
	 W/Ziaru51Rn1sEagRZmgJDP1BvyLQeJCy7AxMPqjgTtrl6fda9/hYk68GZhg0/QAga
	 16Ti+KbgncxlOmJAnCyLZeORUPgqPhX2EWX7VFFwa+myc89irz8OiO11iB+x498B7i
	 m5NQVy7Q0UDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E2DC2BBCA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892502278.29132.10498984203038489058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0622d82c6fd3a5c7120ef0056db0e2820a39bd31459398b38afd50a3169e3b54
Date: Thu, 20 Jun 2024 23:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718925022
