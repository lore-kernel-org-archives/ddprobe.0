Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F9B31355B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764918174; cv=none; b=aWh2UrypHAW+paQp0SKONy0FRxLO6qjR6gHF2yiC4OS79lU9JPeUiG3NCZIeVfKxQEYIZ21EFPO71ymlYskp8O4HNY5X1QyJ+H9jkQPH05Km6iKCB7eWrxfwaSCEFeAbWl76SjO/RmGzgI3EKVVqPxmw8zQh0MuJNITRzhEWw98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764918174; c=relaxed/simple;
	bh=7DflMdaeKiVi/BFqYYLYoKXXJ7VGIcPyHVh4mB4OdaE=;
	h=To:Subject:From:Message-Id:Date; b=RhXpzm7xsEAMTOTEhhWKwto1+CH05ztMNMsBnqLO1mrbpseEZQiNlnfDVNjY9fThabMwrz6PonBZVwXX7cxbpI+Jv5u6tcjJms+9dCpEzYAoy63QVS8Ko+IcbTsAPez7so3ddHm/NXAZHb2EPzCvATsyomJszEm9nG3gq8rNLpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebARPqmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebARPqmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3431C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764918173;
	bh=7DflMdaeKiVi/BFqYYLYoKXXJ7VGIcPyHVh4mB4OdaE=;
	h=To:Subject:From:Date:From;
	b=ebARPqmJeHJpngZv1xXlcNAeCnyPxwj4AagAR9Svq5dIda2hva7QXjnY58CPneonx
	 fsZZmV4X1ZVjAP9pOhjHGWBOT3YDIEBNi7gmJBKMqrREb9tjcDYXcjLg/CdWqeml9d
	 FkmAnguntOMazH0WAxkTQ/yvejXU/avnDusnOvwMucZ4yRzBNug7YP5x/uoofUvvsE
	 rTRmydqn0nDiy2IL92swPoJIGPes2TfeTm8GS9RfYxA3e7BLg25Ga9Zlz6OVqTxn75
	 F+UDmpdABnwQ04I6VZLYbgpuodabvmJUE3T5LAGtES5JTzJWIHRbS2Q+lANfHoxNhx
	 tv86hVC9hD87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934A7D2E008
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491817359.1174.15404398626943255046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5ad618f0de13e97836781efe6ccd13602ec0b41b18bbd5dc30ab0e32a5e293
Date: Fri, 05 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764918173
