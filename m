Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404C82475F7
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739027154; cv=none; b=c2P6Wiinkw0EWI5ivF81MHOLetuYo+0dn6T6SmZ+YN0ZD8JYs9w6JY5m5PA/mMZDj10O9LvI4yYvvcHhdr/mLnbtac8Hsvk6mOi44MjCILBqfFYamFv8hLDEPn30INgIgKW+9h8x3/eLfKH/qWRXLOIjS2st5M3dA+karNZMVns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739027154; c=relaxed/simple;
	bh=0tSadIvg5gQW/oHiwVvRExle0z/yOJ2Q6HJDXreLcSU=;
	h=To:Subject:From:Message-Id:Date; b=XjAWSGpjCSV0YhQqzD0rbjaV+eszav9daiycqLcdtePN6M1ymQmk0Qyy+1X64xev2ZrzO6yA5kGTRDx9cJSSIxtZwyObMNv3eYcOKYUCVwj6z7X3mwIQtesOXKvRDqwx39mahRUX8Yd4zg0XSYD6Peh+Oj32KDYl3GrPQxpdEiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eelYuqf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eelYuqf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37ABC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739027153;
	bh=0tSadIvg5gQW/oHiwVvRExle0z/yOJ2Q6HJDXreLcSU=;
	h=To:Subject:From:Date:From;
	b=eelYuqf6DainQPwSvgCbQ0eZzQilt7B7wv4Mk0Iye+fVFdDXP3ygcUI0t5XFH++GZ
	 dkY5SN0PbJUadZY+s/hYzEoK6gH1Vyq/tpqLKLac2hhW4iEvGfsp/oRtrvFsqA3slC
	 z9/bMOJIh7DU3hPalP6cR3/t9/BCJqAAwg9IY8ww2dikqs18ItwCnBUGqeZwiPI3uT
	 OS4+DGq/VxiI8lAY3JvS0hP0tB1v6Zmp4EuXDWYaFE8XnxYhDW7tLxUp/pnySitxxF
	 8xQUhPM/d5czafDJpPhPBvhXpdqAjVmy+ZCmfsONZoB3X4S9zRmdUgdacHxdjmo/NG
	 PA+HHGl9EvnlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C93C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902715359.27941.1372355664700769271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a723eac483efcebe430eb9a2533c39f109c172d976dc8468a2b43fb63cc6c2
Date: Sat, 08 Feb 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739027153
