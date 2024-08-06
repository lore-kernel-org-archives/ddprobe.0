Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2704D1BCA0A
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722927354; cv=none; b=Gowxcsk3QS/o5NdIzl9UemQ32iVqfSMShxtQ0McHr/oUdAb9VcalbUwsYAld8W30QJjuB3x28h0h6M/WcUchnrLnaBjM3kSCUqqSSjNb+bZa8eLAqPc3+DD7TsHdsQyoHQlcjFEe8/sSTNzV4Pllf4V9DUF4lTic9SUtE46EZ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722927354; c=relaxed/simple;
	bh=OTCa1J5hjniNmI2wpLa03/NqJ5ZB2jd0BRjn9Vnk0EU=;
	h=To:Subject:From:Message-Id:Date; b=p78CYr8HDQrRkjBNIvdYanRQoe6NgX02pllo/TrApB23j/pXIrNSoqQQX7kREhXeMlp5f6tbRsjL8ac7PevIg+Uo852lGuUwt0saJYyeLX3L2k1ZQ9mloSQuIcB0//Uxx6Ubn56rudVlESn5aRUnlDq0J0reSeAQ+pbzfuYNR9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6doLHK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6doLHK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98B7C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722927353;
	bh=OTCa1J5hjniNmI2wpLa03/NqJ5ZB2jd0BRjn9Vnk0EU=;
	h=To:Subject:From:Date:From;
	b=j6doLHK0LiyikIBKJaTqkD3WSp3VXX9yMxPYytd95KTKtyhDyzERYwc3ZM0NLhxl4
	 Tc3JgHHBX40Eb29Njf+6KdRfBoAfW1vL+QVinlMN6eiuPHBK9erdcTXGVMdCFksl6x
	 PtmirxGsL3DZEICz/PswaoHrC87qlCmoEnYcvhOE1dMJTfRUlG1M+dcrpzQla6KO7j
	 syNSCY9SyYjKEWJQK/122XdlDCRZd7IKFQ6CHP1R+Oo/eA/BAjExVkMJhsRkqRpHhf
	 e/tZJ0SBEzst9UDW1PMWcICFV65S0B3xkQM7yBnH8FApeXmJZtbkAWB8qWs6/u5/q1
	 6aWYw8y20sytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9947DC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292735361.25890.2983165964667709715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91d06eb5d3b42f1429bf557f0b509690fb669db2441b185120c43eea4b6ef08
Date: Tue, 06 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722927353
