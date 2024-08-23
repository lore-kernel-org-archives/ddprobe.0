Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1610E195
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724453754; cv=none; b=B8uOFQE5+/C/XcKDJuxZWTnkgz/+2fr9x0BAfUyjF1vUOdY04I0TnNKzb20bCvdf/1EetHKL6dpmrke0WZjq4ehsq1ttz/XGL+3GJGluR78oP3BpVn9Sgllo/2HCLthRZVYzl5hkFvOoL7CTaEPkmwvgZ/ReIov8T5rVmckDm/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724453754; c=relaxed/simple;
	bh=5zSbY8dEakLZFdD2F4ea+fGpD9+BNOH3zqUjclQY7dU=;
	h=To:Subject:From:Message-Id:Date; b=q/UCogHaz66ct/DC8Ssfu5dObnh6nuST4t6l/4OLMaGwVZmaq+ydgk3El+171G6+HKvhdlDTKSoJ4PKWc/kmsnx51EwYafqVNSHJGhsGk0RYCK1pymr2IEdNGCPjXZsUUAx3atmtVyN4UnieKlIcD900rlIqDUO0s+WXb78p3Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCMNs7GE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCMNs7GE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A32C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724453753;
	bh=5zSbY8dEakLZFdD2F4ea+fGpD9+BNOH3zqUjclQY7dU=;
	h=To:Subject:From:Date:From;
	b=CCMNs7GEiMLvIgYr02LwYyFLbfKoNcSd28BitNTuu4+rCtQgockG0cSW+CVXBDkhf
	 IFuJr0KoffB630QDYjH5Py89MB6LEfhqCCSlJdXFMVrzfUm+1ulFycZneYGgT7UfWM
	 qwSbcjlq57SG5LW4LJ/eg+MYZ9tV4B6Sd4oG/scSSkqqyU/vnUevjZqvFLk7p5gn/9
	 lU7/p5NrWsoFGyhFW0MKeicOXEUNzmKZmLmSAhN4q+X+8cHPIdNkaok4KTDQK3xeyW
	 hlRAPtlD/E2Mg6ggsj5Wlv+Mh1D/6+PWn1VDaITJsXEz6QGEF4aIrEbxxgLNeoWHxc
	 uwgdWZiNAD43g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098EC5321E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445375358.8423.219179796522918905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f663e64617263e25388469ec26ba72ad7292af8e962a9225883120373cead4e8
Date: Fri, 23 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724453753
