Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6B41A9FAB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769258034; cv=none; b=dbL/zSDcWQo71VeClf+Cn1kJ5b6GvBfhuFjYAGdJ8h4AKcN8H0DapzMyQSaAhu1r0lMA3Rn0h3QiLXjJuhFzxJ4ZweZaoZ46l00qhWjmFhYsv+ZnpIBwrSOAgVTxjCB0koUWub9wbbK+OYHOFjxrfd/Rmn3LAMoMEpZ8IvxUcus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769258034; c=relaxed/simple;
	bh=Lt0R8YF1yqZJVlTy88d7waauJsU2i5gLL35N9FB5TGk=;
	h=To:Subject:From:Message-Id:Date; b=WpjEil0G0ORu6phKx55nTwpRKnF/mljJUU18vomQhhNBLrYjWdwBp9y3blm7kZJ4jcERAcpOM8/vYtc/XNS8YGToo91k1eGZM4gD89azOeG+KfbmzkeSFs1iWkJWmqTC8WTFXxf9M7I/etFCyPtOnu40UtiMkdEukNTvPP/E+mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niS7nJBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niS7nJBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6264C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769258033;
	bh=Lt0R8YF1yqZJVlTy88d7waauJsU2i5gLL35N9FB5TGk=;
	h=To:Subject:From:Date:From;
	b=niS7nJBucmZHu9ISr635AIHlVpWXB6pYydRiMoTyaU5Rg6ZBVv1c+7TEM4WpkmEE5
	 PHbv5aHWEeTePdadKJ3A4dkIoIV2cft7BYIlb7cM6STIcP7RPHvhSTCY96CG0/kEUW
	 aaLYQjBmdVyGs7f59YBzTeLP6IrsBmDrsYvBifdb0l3FAitv29HM29VnlnaTa+1VAu
	 QIAJczedpWvxhnyFLhdistj3zJTyXbxDiajz5IEztm37/dUOVKnpgFmsrB/M6EAjzD
	 +zy0PebBqJnujIOxMKe+n2ncM0iaa78f6mqFsC6Dqw6DGEQ9hcDReA1K5zAbipNru5
	 YUXfKC5BvFBPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930AFD715C6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925803359.6995.16830353509675134185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05063fa87f57f1b34fc39c36a7804165614dec72680964b4a7e85255497e5aee
Date: Sat, 24 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769258033
