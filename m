Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4562013B284
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747403994; cv=none; b=TABnc7UciY3c6tnCOCyCki3oilA9GVgh8gLEhzV/OrBchAl/pKg969BNuCG946OSvoPROBWisuDxeNslclapkk/yeTVRxB48NMWV+3Jq0Rd3LuNVS6fom6BHsSThy1TJbrOPfCPkSTMTBIy+5yyo/cEi4lrKxzFffZRZjqY7d9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747403994; c=relaxed/simple;
	bh=adyjysYXXjm50kd6gKlnnrd9YYB7g4hfbYEVPJBYBLY=;
	h=To:Subject:From:Message-Id:Date; b=S9pEvLkm0GkfpgAtF8+RNU3KWqypFFAUm0IKDaL7RJLPL/PHlHLwyGf48vGYEggDtAbLcQPK05rajHitUTFN7JtsI3un7P0fry3GcKD8sNBmVNjVD1kLlGZ9NG7WqZdFwL7F7RIB6Ps780DAPiH2634EVyCxJlHF3JKrY2AyMo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SESaoLPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SESaoLPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E69C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747403993;
	bh=adyjysYXXjm50kd6gKlnnrd9YYB7g4hfbYEVPJBYBLY=;
	h=To:Subject:From:Date:From;
	b=SESaoLPk3SfuRJrG3zJn2m1sjGjQusUeyWGxm+2MHMd2zj4QixBly2gKH6I4q5FAN
	 70nRhG3FfeY+FYRVgM46eTaLnreOgCI0Hk5udLWRdQ5tg0XkP8hqceM3Hq5kyZKutr
	 +3dIjMhhWu44WPxOU+l25N/cdzFDDU/GFqlqKKg05BRyCe2IlqM2LwpOcxvDw+kjas
	 2oVPcMhPqk3UC6AyyLX0R9omkMJrHT4u2pqiLJpqrxPY25eIT7MkYGT/XQck63iOeY
	 8i3SdXCaXShAY+f0NzRkLAJjFnHwe3iA1fyXmdYCTRaL6OPGSsgc1mL75//jm468nd
	 x/cWM6eG1yh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37DC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740399357.9930.10077787990284163049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3cd781958c2bd6a0d56415d2f28e54e9d0c613cdaf006579b42d72e986da44
Date: Fri, 16 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747403993
