Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7A948CD61
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788285034; cv=none; b=pqNs87EVxdFQKzMJVgPA1v1aB3uh7CRAiI4PP9OyN186SgPXoi0AdbtW8sylM5XPsuPHVWldn6FVAedWyLgRrQsPPfRFvk+XdAgGTFbwX/3GU53SpiYAuAWy8VFYwxW8I3NN5ADq13io5rrfTh1ONWU8rgr0a+NejF9k46/5GHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788285034; c=relaxed/simple;
	bh=ZvEsswUisZKuu4hdjVH+bv3VG9WbkDxYZtqx3iq76xQ=;
	h=To:Subject:From:Message-Id:Date; b=G/Ay0MieuAmIi6ZYIlYs6KsZ5l3LVKCAnoLrBXBQshBvTmfmjSBog1BRr5IFKS+B1lSnS3xSukpFx5OYHYFSP9pAwPaqpGyN3dpNqvvvJV5eszsVBq4Yz22JNP5i4Dq8JhQR9WWdDMumaXEDPihkz/AOlwtOTpZlRDaJ9YuY2tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5jaaXkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5jaaXkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4F6C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788285033;
	bh=ZvEsswUisZKuu4hdjVH+bv3VG9WbkDxYZtqx3iq76xQ=;
	h=To:Subject:From:Date:From;
	b=Y5jaaXkL5eGPz099Ic+wCuwwO2AqKtFqXaOYDL6P9vrHoixNkkOaroqV+nLOvkxBu
	 EYt2ia+oK+i+jC7KjQs4LAW20jRsJfhc1NlEHF6PD8GGgOnb2UP/GXHxbp0VndYzBS
	 G61Vu6TW3wLiWZ2s9vsA5xMXd6seNfOv3L1XSRkDwlK3hBJkgI+zTPvAmSEkyjEzMU
	 lOcAhLa3i9k5JjOk4uCmu/lVnNwzM+iu2srympqkCR7A0uncOlHD1xnIOnZ+lIsQ/z
	 AJIT1UeSNZ5xXIu5pQJAvhW+zR/3L2nuP7EbO5e6XakX5AyoM6YguSkTUt5q27H+CU
	 K6Iyz9wiCuqXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A6BC624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828503372.5633.18000252571546570340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5eaaa3e2cbfef5a4f6bc825a34b3582a8b6e94413b5a7133d31745cfc59b0be
Date: Tue, 01 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788285033
