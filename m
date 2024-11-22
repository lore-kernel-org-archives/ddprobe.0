Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5B51CA9C
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732311954; cv=none; b=aQVUPoxSDHJKC5kWKE1Y9P3W+RM82ngZzIr6UeQFXxKJZP8UeBY9dZMlNI2+ril+9VMmsnmMRQF6YFqFrSgMCA2RmfE/zMP+S/A6ecff3gx5NjGa4djuiLSW8r28hIQxDnASoJQ9qxA4eD+TjOYpeJJkf5aoxEoGyJfJTHyl5Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732311954; c=relaxed/simple;
	bh=GXnzO0lHBdVNbtYCI5hXvphqlq12tXl95c2sJ5w2nPk=;
	h=To:Subject:From:Message-Id:Date; b=KDW29kEmlfMx82+GFRi0KmPvcrKzYnCl0O7Udr5LcNt/EFHmFSb3U4xMNWiA9ed+YFBkMrnk7ytFQOi5rqbTd6Uz0ase2VNVMvrI71YHZYsShpJUyN+GBe7uZmXg5lMrZVJER3sXgnLKVWJ5mT9JUtnrHad9uiPjB+qzPOYjE7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctUk0Kpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctUk0Kpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DFC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732311953;
	bh=GXnzO0lHBdVNbtYCI5hXvphqlq12tXl95c2sJ5w2nPk=;
	h=To:Subject:From:Date:From;
	b=ctUk0Kponb/OPf4K6DOOf4SkfF1y7TAYUFVMpVDzpdslTSklaSz1oKfNlL/B+si1S
	 Z7LihofeWLGDqRtlIpUeEHp+ukjPcU7euDP8yshP5lfG2ph4nR4531Fe9b5ICJ6+UT
	 /uxBkeuUDffxZJrm59K5Wnx/ZSr4KfkVKjjVUNJHL8KaljHiTLGePFuYIaj2RMEOU4
	 +z9S8aSESD/cErfo6amsEev+7COwDtUHHDczOIliif9b8RTnMBVEZ3ZNG96qGSiBTn
	 dV0zX3/5/HWlpdIbLWVfRVhAy0dGQUvfYFfhutQIAYb+CALh3UyOu5ZiBPsgoQe+JZ
	 VWqaf5QwMyPDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF2E6ADCA
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173231195358.997.5083683782919103617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d5bba4039527ca1293cfa133d8f70b13ab9390b6c0a6ecb30e31d759bf06e5
Date: Fri, 22 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732311953
