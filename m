Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211351E89C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724412354; cv=none; b=qESiO+elbp5qr7fafE6EqMyPH5rO66J0yiZECzIEhYXD9f592SG0AdszgxmImYnWAzg9ApOLw2r70TekqgiaeACfjYsBZE5mLIFE4WNI5dSHxYxQUD3bseruCkzaxS9FhgrU9EXxa2ZeJwQEvpdsG/5KACUW4v86zLAt4Fnwg9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724412354; c=relaxed/simple;
	bh=5JxfFe9ZgHs2kKsuJ9Fu/LBR6AoibdiluVbel/qITWI=;
	h=To:Subject:From:Message-Id:Date; b=SJw48ueoFu8wUEyXl3maAqzvP4CIacgRafmhek7IObl6wDvAXIQp8J04DRFZxZ6eDgHGxMn3LakeKbYGzAUC9+IHGOJv6xry/S4DLZ55BeURdO9hce5EwhQhUUVDt6LkkP98xhnd5gUDlfpUY/JT2w7lYJ6woaD4hjxdr3PNkz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iet70Ojl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iet70Ojl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB14C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724412353;
	bh=5JxfFe9ZgHs2kKsuJ9Fu/LBR6AoibdiluVbel/qITWI=;
	h=To:Subject:From:Date:From;
	b=Iet70OjlmpGIBSDy1YRpTvwrvUOQCQGcF5CGTXzyUEgvmQ7qMzHSTltbagvfnZrDt
	 BXsnSDacl4NdkkSHJb6/e+8VHA90Ojioj3MkL4Bec6mXt6Kz0o18Mi/B+9z5OQvMLI
	 F3CW2cnZRj7Q9lGrm9RIsYI17tOF7+pfffihhoYTly8fgWAQw9E0vcjOAnIL4e7uP1
	 dmKPCYo3/jXRgO4p5CDRknRMpO3hr+LLCbf/4jmnec8I1gO0VD5ihSV5mXxMaCfDUm
	 aT2xbvZ6AoGAnb0V/OdrXa8GvsUavZxep6D70aEyEpPScJZclIp0ePzKVkwxySV5kv
	 6EaUfcQkZ52kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0D1C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441235363.5626.17088452494940026510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9901553d1856979da9ee591d1d64ebf645cf2e47be21ac784b8f177296f074
Date: Fri, 23 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724412353
