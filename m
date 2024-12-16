Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F10520459B
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734350154; cv=none; b=UWV9lcUlz9Fn9FJkLZA+9KIjI0N9O4cPDRrk694mX6z+d2nSWXdXrU0YhWF+A3jSatFBuXKWvDfB7hKB7Mj1XBht5HVN8Cvhm+SSutascvcZeRusSq/4ozYTdOc+KfZ1I6LHLAYmAHQR+PV+jiA3gjk/fdc9cw8vTM2vwh1mU9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734350154; c=relaxed/simple;
	bh=T64BCqpEN7IzJlr/Y5YnvuRDeMITLM0oNrD/zsJmkrg=;
	h=To:Subject:From:Message-Id:Date; b=btKnbX/CqUyDTT0DXHDiluFGq0ZzKk/lZ5wf0p5hwicn2HxBexdLxlBPospvR1xpcUPX9QRMiyrDvmn8V8LjkKtSrIn0AsOcWIEkotcdpXK7dNxyZAzFGaFBaDyJWLqnDEoATmCZR3FPpniUff3D2XZu2ajw5aZOICc1W/+awu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtHkXsSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtHkXsSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2436C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734350153;
	bh=T64BCqpEN7IzJlr/Y5YnvuRDeMITLM0oNrD/zsJmkrg=;
	h=To:Subject:From:Date:From;
	b=BtHkXsSrKojO4cTfXYE1dpSEfyrPbA3RQoPH0wlk0Ec6bw7W0qTeR+4U77HA3WoKM
	 FItNrRB6+2tU/rFwQoAo2ND0jpLnz/b68qJ7Ti0g1r+agIOSQgq7kn7zqJ5z3+tFH/
	 UaPZ2T3ULsFv7PgGKYUv6rTGHvEcMdCVEojdR1j5Cr/RItgCZ7d43mfyOScOVhopZ1
	 gt8Jrt30+sRFmB6NpMS8YxUFyYq9aEeWDqe4QwxywiYvu2R7El45/XxmKeBDobC86Q
	 6/9AKF+x5bLf0R+3nkw8bpo4rc/ELGfKcoAPin5QigBNmJd891+30w8wtkE20i83PL
	 /m0cTo2K4JwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E34E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173435015358.23578.6387318501740905607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab249be2698a3f7fc25542554d44d33eed84ed018404f47a4221e1f227a0a524
Date: Mon, 16 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734350153
